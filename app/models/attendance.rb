class Attendance < ApplicationRecord
  belongs_to :member
  belongs_to :concert
end
