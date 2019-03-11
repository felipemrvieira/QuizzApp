class StudentPath < ApplicationRecord
  belongs_to :student
  belongs_to :path
end
