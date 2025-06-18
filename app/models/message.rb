class Message < ApplicationRecord
  #Assigning a user and a room to messages
  belongs_to :user
  belongs_to :room

#So once a message is saved, it broadcasts a turbo stream
    after_create_commit -> { broadcast_append_to room }
end
