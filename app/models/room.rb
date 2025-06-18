class Room < ApplicationRecord

    #Connects rooms to messages
    has_many :messages

end
