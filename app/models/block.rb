class Block < ApplicationRecord
  has_rich_text :text
  belongs_to :service
end
