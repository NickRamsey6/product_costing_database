class Day < ApplicationRecord
  belongs_to :week
  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|
      Day.create! row.to_hash
    end
  end
end
