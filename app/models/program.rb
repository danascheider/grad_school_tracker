class Program < ApplicationRecord
  belongs_to :university
  belongs_to :user

  has_many :faculties, through: :programs_faculties
end
