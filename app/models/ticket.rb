class Ticket < ActiveRecord::Base
  belongs_to :user
  validates :content, presence: true
  validates :short_description, presence: true
  has_many :comments
end
