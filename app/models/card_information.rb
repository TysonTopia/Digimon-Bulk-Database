class CardInformation < ApplicationRecord
  self.table_name = "card_information"
  has_many :bulk_locations, 
          foreign_key: :card_id,
          primary_key: :card_id
end