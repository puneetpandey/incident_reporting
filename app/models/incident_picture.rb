class IncidentPicture < ApplicationRecord
    mount_uploader :picture, PictureUploader
    belongs_to :incident
end
