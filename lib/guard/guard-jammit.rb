require 'guard'
require 'guard/guard'

module Guard
  class GuardJammit < Guard

    def initialize(watchers = [], options = {})
      super
      # init stuff here, thx!
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
      Jammit.packager.precache_all
      true
    end

  end
end