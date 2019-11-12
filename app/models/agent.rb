class Agent < ActiveRecord::Base
    has_many :tickets
    has_many :comments
end
