class BulkLocation < ApplicationRecord
  self.table_name = "bulk_location"
  belongs_to :card_information,
             foreign_key: :card_id,
             primary_key: :card_id
end
