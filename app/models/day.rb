class Day < ApplicationRecord
  belongs_to :week
  def self.import(file, week_id)
    
    CSV.foreach(file.path, headers: true) do |row|
      @week = Week.find(week_id)
      Day.create! row.to_hash
    end
  end
end
