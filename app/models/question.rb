class Question < ApplicationRecord
  belongs_to :path
  has_many :question_options
  accepts_nested_attributes_for :question_options, allow_destroy: true

end
