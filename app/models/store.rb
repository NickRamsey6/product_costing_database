class Store < ApplicationRecord
  has_many :weeks, dependent: :destroy
end
