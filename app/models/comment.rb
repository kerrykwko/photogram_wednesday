class Comment < ApplicationRecord
  # Direct associations

  belongs_to :commentor,
             :class_name => "User",
             :foreign_key => "user_id"

  # Indirect associations

  # Validations

end
