class CreateCases < ActiveRecord::Migration
  def change
    create_table :cases do |t|
      t.date :date_reported
      t.string :type_of_incident
      t.date :date_occurred
      t.time :time_occurred
      t.string :location
      t.string :disposition
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
