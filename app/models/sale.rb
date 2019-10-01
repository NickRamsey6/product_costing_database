require 'pg'
class Sale < ApplicationRecord
    def self.import(file)
      CSV.foreach(file.path, headers: true) do |row|
        Sale.create! row.to_hash
      end
    end
end
