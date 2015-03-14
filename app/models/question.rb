class Question < ActiveRecord::Base
  belongs_to :poll_interval
  belongs_to :category
  has_many :answers
end
