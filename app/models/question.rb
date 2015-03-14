class Question < ActiveRecord::Base
  belongs_to :poll
  belongs_to :category
  has_many :answers
end
