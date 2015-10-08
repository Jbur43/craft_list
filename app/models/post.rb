class Post < ActiveRecord::Base
	attr_accessor :avatar
	mount_uploader :avatar, AvatarUploader
end
