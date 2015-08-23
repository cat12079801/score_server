class Genre < ActiveRecord::Base
  validates :name, presence: true, uniqueness: true, length: {in: 1..255}
end
