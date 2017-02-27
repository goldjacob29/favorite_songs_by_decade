class Genre < ApplicationRecord
  # Direct associations

  has_many   :songs,
             :dependent => :destroy

  # Indirect associations

  # Validations

  validates :genre_name, :presence => true

end
