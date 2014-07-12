class Customer < ActiveRecord::Base
	mount_uploader :image_customer, ImageCustomerUploader
end
