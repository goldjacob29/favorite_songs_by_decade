class SongList < ApplicationRecord
  # Direct associations

  belongs_to :playlist

  belongs_to :song

  # Indirect associations

  # Validations

  validates :playlist_id, :uniqueness => true

  validates :playlist_id, :presence => true

end
