class CreateIncidentTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :incident_types do |t|
      t.string :name
      t.timestamps
    end
    add_index :incident_types, :name
  end
end
