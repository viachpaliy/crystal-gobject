require "./box"

module Gtk
  class ShortcutsGroup < Box
    @gtk_shortcuts_group : LibGtk::ShortcutsGroup*?
    def initialize(@gtk_shortcuts_group : LibGtk::ShortcutsGroup*)
    end

    def to_unsafe
      @gtk_shortcuts_group.not_nil!
    end

    # Implements ImplementorIface
    # Implements Buildable
    # Implements Orientable

    def height
      __return_value = LibGtk.shortcuts_group_get_height(to_unsafe.as(LibGtk::ShortcutsGroup*))
      __return_value
    end

    def title
      __return_value = LibGtk.shortcuts_group_get_title(to_unsafe.as(LibGtk::ShortcutsGroup*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end


    def view
      __return_value = LibGtk.shortcuts_group_get_view(to_unsafe.as(LibGtk::ShortcutsGroup*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

  end
end

