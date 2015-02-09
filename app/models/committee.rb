class Committee < ActiveRecord::Base
  has_many :vootes
  validates :name, presence: true
  validates :logo, format: {with:/\Ahttp(s)?:/, allow_blank:true}
end
