class Voote < ActiveRecord::Base
  belongs_to :costituencies
  belongs_to :committees
  validates :number, presence: true
end
