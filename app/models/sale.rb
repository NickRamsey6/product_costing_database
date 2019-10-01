class Sale < ApplicationRecord
  scope :overall_sales, -> { where(store_id: "1")}

    def self.import(file)
      CSV.foreach(file.path, headers: true) do |row|
        Sale.create! row.to_hash
      end
    end
end
