class Photo < ApplicationRecord
  mount_uploader :image, ImageUploader

  # Direct associations

  has_many   :comments,
             :dependent => :destroy

  has_many   :likes,
             :dependent => :destroy

  belongs_to :uploader,
             :class_name => "User",
             :foreign_key => "user_id"

  # Indirect associations

  has_many   :viewers,
             :through => :uploader,
             :source => :influencers

  has_many   :likers,
             :through => :likes,
             :source => :user

  # Validations

end
