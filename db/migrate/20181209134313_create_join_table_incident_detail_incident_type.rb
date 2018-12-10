class CreateJoinTableIncidentDetailIncidentType < ActiveRecord::Migration[5.2]
  def change
    create_join_table :incident_details, :incident_types do |t|
      t.index [:incident_detail_id, :incident_type_id], name: 'incident_incident_types'
    end
  end
end
