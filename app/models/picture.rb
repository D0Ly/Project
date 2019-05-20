class Picture < ApplicationRecord
	mount_uploader: :image, ImageUpLoader
end
