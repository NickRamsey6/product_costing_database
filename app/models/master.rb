require 'pg'
class Master < ApplicationRecord
    def self.import(file)
      CSV.foreach(file.path, headers: true) do |row|
        master = find_by_day(row["day"]) || new
        master.attributes = row.to_hash
        master.save!
      end
    end
end
