class Question < ApplicationRecord
  belongs_to :path
  has_many :question_options
end
