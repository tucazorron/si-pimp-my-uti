class AddPatientToBed < ActiveRecord::Migration[6.1]
  def change
    add_reference :beds, :patient, null: false, foreign_key: true
  end
end
