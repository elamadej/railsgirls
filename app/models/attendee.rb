class Attendee < ActiveRecord::Base
  
	mount_uploader :picture, PictureUploader

	attr_accessible :address, :bio, :name, :picture, :twitter_handle
    
    geocoded_by :address ##it's a call to a method 
    after_validation :geocode
	acts_as_gmappable :process_geocoding => false


# def validate
# errors.add(:name, "No Toms allowed") if @name == "Tom"
# end

end
