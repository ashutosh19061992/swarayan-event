class FollowUp < ApplicationRecord
  belongs_to :volunteer
  belongs_to :member
  belongs_to :concert
end
