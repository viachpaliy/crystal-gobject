require "./action"

module Gtk
  class RecentAction < Action
    @gtk_recent_action : LibGtk::RecentAction*?
    def initialize(@gtk_recent_action : LibGtk::RecentAction*)
    end

    def to_unsafe
      @gtk_recent_action.not_nil!
    end

    # Implements Buildable
    # Implements RecentChooser
    def show_numbers
      __return_value = LibGtk.recent_action_get_show_numbers(to_unsafe.as(LibGtk::RecentAction*))
      __return_value
    end

    def self.new(name, label, tooltip, stock_id) : self
      __return_value = LibGtk.recent_action_new(name.to_unsafe, label ? label.to_unsafe : nil, tooltip ? tooltip.to_unsafe : nil, stock_id ? stock_id.to_unsafe : nil)
      cast Gtk::Action.new(__return_value)
    end

    def self.new_for_manager(name, label, tooltip, stock_id, manager) : self
      __return_value = LibGtk.recent_action_new_for_manager(name.to_unsafe, label ? label.to_unsafe : nil, tooltip ? tooltip.to_unsafe : nil, stock_id ? stock_id.to_unsafe : nil, manager ? manager.to_unsafe.as(LibGtk::RecentManager*) : nil)
      cast Gtk::Action.new(__return_value)
    end

    def show_numbers
      __return_value = LibGtk.recent_action_get_show_numbers(to_unsafe.as(LibGtk::RecentAction*))
      __return_value
    end

    def show_numbers=(show_numbers)
      __return_value = LibGtk.recent_action_set_show_numbers(to_unsafe.as(LibGtk::RecentAction*), show_numbers)
      __return_value
    end

  end
end

