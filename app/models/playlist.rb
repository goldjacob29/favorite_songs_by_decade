class Playlist < ApplicationRecord
  # Direct associations

  has_many   :song_lists,
             :dependent => :destroy

  belongs_to :user

  # Indirect associations

  # Validations

  validates :name, :uniqueness => { :scope => [:user_id] }

  validates :name, :presence => true

  validates :share, :presence => true

  validates :user_id, :presence => true

end
