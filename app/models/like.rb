class Like < ApplicationRecord
  # Direct associations

  belongs_to :photo

  belongs_to :user,
             :counter_cache => true

  # Indirect associations

  # Validations

end
