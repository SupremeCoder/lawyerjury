class Lawyer < ActiveRecord::Base
	mount_uploader :image, ImageUploader
end
