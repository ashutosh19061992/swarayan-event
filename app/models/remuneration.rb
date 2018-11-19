class Remuneration < ApplicationRecord
  belongs_to :concert
  belongs_to :artist
end
  