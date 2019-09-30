class Day < ApplicationRecord
  def self.import(file)
    belongs_to :week
    CSV.foreach(file.path, headers: true) do |row|
      Day.create! row.to_hash
    end
  end
end
