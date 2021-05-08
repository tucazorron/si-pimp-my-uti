class Patient < ApplicationRecord
  has_one :bed
  has_one :gender
end
