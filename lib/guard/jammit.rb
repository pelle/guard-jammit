require 'guard'
require 'guard/guard'
require 'jammit'

module Guard
  class Jammit < Guard

    def initialize(watchers = [], options = {})
      super
      
      # init stuff here, thx!
      ::Jammit.load_configuration ::Jammit::DEFAULT_CONFIG_PATH
    end

    # ================
    # = Guard method =
    # ================

    # If one of those methods raise an exception, the Guard instance
    # will be removed from the active guard.

    # Call once when guard starts
    # Please override initialize method to init stuff
    def start
      jammit
    end

    # Call with Ctrl-C signal (when Guard quit)
    def stop
      true
    end

    # Call with Ctrl-Z signal
    # This method should be mainly used for "reload" (really!) actions like reloading passenger/spork/bundler/...
    def reload
      jammit
    end

    # Call with Ctrl-/ signal
    # This method should be principally used for long action like running all specs/tests/...
    def run_all
      jammit
    end

    # Call on file(s) modifications
    def run_on_change(paths)
      jammit
    end
    
    def jammit
      ensure_rails_env!
      ::Jammit.reload!
      puts "Jamming assets..."
      ::Jammit.packager.force = true
      ::Jammit.packager.precache_all
      true
    end

    private
    def ensure_rails_env!
      if !defined?(::Rails) || !::Rails.respond_to?(:env)
        require 'rails'
      end
    end
  end
end
