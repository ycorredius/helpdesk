class Comment < ActiveRecord::Base
    belongs_to :ticket
    belongs_to :user
    validates :statement, presence: true
end
