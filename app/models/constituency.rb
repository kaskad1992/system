class Constituency < ActiveRecord::Base
  has_one :useeer
  has_many :vootes
  validates :name, presence: true, uniqueness: true
  validates :number_of_voters, presence: true
end
