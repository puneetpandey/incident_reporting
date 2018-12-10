class CreateIncidents < ActiveRecord::Migration[5.2]
  def change
    create_table :incidents do |t|
      t.belongs_to :school
      t.text :description
      t.boolean :active, default: false
      t.timestamps
    end
    add_index :incidents, :active
  end
end
