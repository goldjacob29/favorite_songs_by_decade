class Song < ApplicationRecord
  # Direct associations

  belongs_to :artist,
             :counter_cache => true

  has_many   :song_lists,
             :dependent => :destroy

  # Indirect associations

  # Validations

  validates :artist_id, :presence => true

  validates :genre_id, :presence => true

  validates :title, :uniqueness => { :scope => [:artist_id] }

  validates :title, :presence => true

  validates :year, :presence => true

  validates :year, :numericality => { :less_than => 2018, :greater_than => 1000 }

end
