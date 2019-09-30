class Week < ApplicationRecord

  belongs_to :store
  has_many :days, dependent: :destroy
  def self.import(file, store_id)

    CSV.foreach(file.path, headers: true) do |row|
      @store = Store.find(store_id)
      Week.create! row.to_hash
    end
  end
end
