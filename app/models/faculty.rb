class Faculty < ApplicationRecord
  belongs_to :university
  has_many :programs, through: :programs_faculties
end
