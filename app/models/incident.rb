class Incident < ApplicationRecord
    has_many :incident_pictures, dependent: :destroy
    has_one :incident_detail, dependent: :destroy
    belongs_to :school

    accepts_nested_attributes_for :incident_pictures, reject_if: ->(attributes){ attributes['picture'].blank? }, allow_destroy: true
end
