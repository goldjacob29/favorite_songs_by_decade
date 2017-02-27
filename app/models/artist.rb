class Artist < ApplicationRecord
  # Direct associations

  has_many   :songs,
             :dependent => :destroy

  # Indirect associations

  # Validations

  validates :artist_name, :uniqueness => true

  validates :artist_name, :presence => true

end
