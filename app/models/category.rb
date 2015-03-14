class Category < ActiveRecord::Base
  belongs_to :poll_interval
  has_many :questions
end
