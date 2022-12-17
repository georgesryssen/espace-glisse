class Lesson < ApplicationRecord
  belongs_to :school
  belongs_to :category
  belongs_to :spot
end
