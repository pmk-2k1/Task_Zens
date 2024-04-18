class Joke < ApplicationRecord
  validates :content, presence: true
end
