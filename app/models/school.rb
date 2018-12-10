class School < ApplicationRecord
    validates :name, presence: true

    has_many :incidents, dependent: :destroy    
end
