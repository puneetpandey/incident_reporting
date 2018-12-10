class CreateIncidentDetails < ActiveRecord::Migration[5.2]
  def change
    create_table :incident_details do |t|
      t.belongs_to :incident
      t.string :name
      t.string :email
      t.boolean :is_anonymous, default: false
      t.string :role
      t.integer :people_involved
      t.datetime :observed_at
      t.string :location
      t.text :description
      t.timestamps
    end
    add_index :incident_details, :name
    add_index :incident_details, :email
    add_index :incident_details, :observed_at
  end
end
