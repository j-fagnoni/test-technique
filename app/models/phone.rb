class Phone < ApplicationRecord
  validates :name, presence: true
  validates :storage, numericality: { only_integer: true, greater_than: 0, even: true}
end
