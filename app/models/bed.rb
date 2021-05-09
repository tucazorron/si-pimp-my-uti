class Bed < ApplicationRecord
  before_save :default_values

  has_one :bed_type
  has_one :wing
  belongs_to :patient, optional: true


  def default_values
    self.busy ||= false if self.busy.nil?
    @bed_type_name = BedType.find(self.bed_type_id).type_name
    @wing_name = Wing.find(self.wing_id).name
    self.name = @bed_type_name + ' - ' + @wing_name
  end
end
