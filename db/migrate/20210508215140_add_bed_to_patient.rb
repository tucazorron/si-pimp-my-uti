class AddBedToPatient < ActiveRecord::Migration[6.1]
  def change
    add_reference :patients, :bed, null: false, foreign_key: true
  end
end
