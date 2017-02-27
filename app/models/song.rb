class Song < ApplicationRecord
  # Direct associations

  # Indirect associations

  # Validations

  validates :title, :presence => true

  validates :year, :presence => true

  validates :year, :numericality => { :less_than => 2018, :greater_than => 1000 }

end
