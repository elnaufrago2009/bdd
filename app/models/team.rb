class Team < ActiveRecord::Base
	mount_uploader :image_team, ImageTeamUploader
end
