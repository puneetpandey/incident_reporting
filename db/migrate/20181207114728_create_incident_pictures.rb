class CreateIncidentPictures < ActiveRecord::Migration[5.2]
  def change
    create_table :incident_pictures do |t|
      t.belongs_to :incident
      t.string :picture
      t.timestamps
    end
  end
end
