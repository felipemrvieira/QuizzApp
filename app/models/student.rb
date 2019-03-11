class Student < ApplicationRecord
  has_many :student_paths
  has_many :paths, through: :student_paths


  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
