class Category < ActiveRecord::Base
  belongs_to :poll
  has_many :questions
end
