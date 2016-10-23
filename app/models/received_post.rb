class ReceivedPost < ApplicationRecord
	validates :message, presence: true
end
