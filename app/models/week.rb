class Week < ApplicationRecord

  def self.import(file, store_id)
    belongs_to :store
    has_many :days, dependent: :destroy

    CSV.foreach(file.path, headers: true) do |row|
      @store = Store.find(store_id)
      Week.create! row.to_hash
    end
  end
end
