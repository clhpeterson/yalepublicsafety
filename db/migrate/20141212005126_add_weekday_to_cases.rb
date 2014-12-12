class AddWeekdayToCases < ActiveRecord::Migration
  def change
    add_column :cases, :weekday, :string
  end
end
