class Costume < ActiveRecord::Base
  before_save :upload_photo

  has_and_belongs_to_many :agreements, join_table: :agreement_costumes

  def upload_photo
    unless self.photo.nil? or self.photo.is_a? String
      img = Imgur::API.new '90b4d040607755992895fdd5bb586ba2'
      
      path = self.photo.path

      uploaded_img = img.upload_file path
      self.photo = uploaded_img["image_hash"]
    end
  end

end
