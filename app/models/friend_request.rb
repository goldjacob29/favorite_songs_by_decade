class FriendRequest < ApplicationRecord
  # Direct associations

  belongs_to :recipient,
             :class_name => "User",
             :counter_cache => :friend_requests_recieved_count

  belongs_to :sender,
             :class_name => "User"

  # Indirect associations

  # Validations

end
