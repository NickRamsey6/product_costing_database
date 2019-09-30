class Store < ApplicationRecord
  def self.import(file)
    has_many :products, dependent: :destroy
    CSV.foreach(file.path, headers: true) do |row|
      Store.create! row.to_hash
    end
  end
end
