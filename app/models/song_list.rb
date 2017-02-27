class SongList < ApplicationRecord
  # Direct associations

  # Indirect associations

  # Validations

  validates :playlist_id, :uniqueness => true

  validates :playlist_id, :presence => true

end
