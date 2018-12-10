class CreatePeopleInvolves < ActiveRecord::Migration[5.2]
  def change
    create_table :people_involves do |t|
      t.belongs_to :incident_detail
      t.string :details
      t.timestamps
    end
  end
end
