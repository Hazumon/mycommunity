class Event < ApplicationRecord

geocoded_by :address
mount_uploader :avatar, AvatarPhotoUploader
after_validation :geocode

end
