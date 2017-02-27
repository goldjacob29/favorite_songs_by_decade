class Artist < ApplicationRecord
  # Direct associations

  # Indirect associations

  # Validations

  validates :artist_name, :uniqueness => true

  validates :artist_name, :presence => true

end
