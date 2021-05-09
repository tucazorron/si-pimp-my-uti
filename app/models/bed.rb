class Bed < ApplicationRecord
  before_save :default_values

  has_one :bed_type
  has_one :wing
  belongs_to :patient, optional: true


  def default_values
    self.busy ||= false if self.busy.nil?
  end
end
