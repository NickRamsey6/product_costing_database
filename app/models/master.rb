require 'pg'
class Master < ApplicationRecord
    def self.import(file)
      CSV.foreach(file.path, headers: true) do |row|
        Master.create! row.to_hash
      end
    end
end
