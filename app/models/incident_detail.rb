class IncidentDetail < ApplicationRecord
    ROLES = [ "Student", "Teacher", "Other Staff", "Parent", "Community Member" ]
    has_many :people_involves, dependent: :destroy
    has_and_belongs_to_many :incident_types
    belongs_to :incident

    accepts_nested_attributes_for :people_involves, reject_if: ->(attributes){ attributes['name'].blank? }, allow_destroy: true
end
