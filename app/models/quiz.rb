class Quiz < ApplicationRecord
    belongs_to :question
    belongs_to :student
    belongs_to :question_option

end
