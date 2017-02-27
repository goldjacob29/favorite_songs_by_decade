class Playlist < ApplicationRecord
  # Direct associations

  has_many   :song_lists,
             :dependent => :destroy

  belongs_to :user

  # Indirect associations

  # Validations

  validates :user_id, :presence => true

end
