class Path < ApplicationRecord
    has_many :questions
    has_many :student_paths
    has_many :students, through: :student_paths
end
