require "./window"

module Gtk
  class ShortcutsWindow < Window
    @gtk_shortcuts_window : LibGtk::ShortcutsWindow*?
    def initialize(@gtk_shortcuts_window : LibGtk::ShortcutsWindow*)
    end

    def to_unsafe
      @gtk_shortcuts_window.not_nil!
    end

    # Implements ImplementorIface
    # Implements Buildable
    def section_name
      __return_value = LibGtk.shortcuts_window_get_section_name(to_unsafe.as(LibGtk::ShortcutsWindow*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def view_name
      __return_value = LibGtk.shortcuts_window_get_view_name(to_unsafe.as(LibGtk::ShortcutsWindow*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    alias CloseSignal = ShortcutsWindow ->
    def on_close(&__block : CloseSignal)
      __callback = ->(_arg0 : LibGtk::ShortcutsWindow*) {
       __return_value = __block.call(ShortcutsWindow.new(_arg0))
       __return_value
      }
      connect("close", __callback)
    end

    alias SearchSignal = ShortcutsWindow ->
    def on_search(&__block : SearchSignal)
      __callback = ->(_arg0 : LibGtk::ShortcutsWindow*) {
       __return_value = __block.call(ShortcutsWindow.new(_arg0))
       __return_value
      }
      connect("search", __callback)
    end

  end
end

