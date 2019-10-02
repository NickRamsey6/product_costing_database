require 'pg'
class Order < ApplicationRecord
  # has_many :products
    def self.import(file)
      CSV.foreach(file.path, headers: true) do |row|
        Order.create! row.to_hashxs
      end
    end
end
