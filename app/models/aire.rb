class Aire < ActiveRecord::Base
  belongs_to :user
  belongs_to :marca

  has_attached_file :aire_img, :styles => { :aire_index => "250x350>", :aire_show "325x475>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :aire_img, content_type: /\Aimage\/.*\Z/
end
