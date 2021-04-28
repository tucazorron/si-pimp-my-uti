class AddGenderToPacient < ActiveRecord::Migration[6.1]
  def change
    add_reference :pacients, :gender, null: false, foreign_key: true
  end
end
