class BulkLocation < ApplicationRecord
  self.table_name = "bulk_location"
  belongs_to :card_information,
             foreign_key: :card_id,
             primary_key: :card_id
  validates :card_id, presence: true, length: {is: 8}
  validates :location, presence: true
  validates :sleeved, presence: true
end
