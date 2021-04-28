class CreatePacients < ActiveRecord::Migration[6.1]
  def change
    create_table :pacients do |t|
      t.string :name
      t.string :rg
      t.integer :age
      t.string :cause
      t.string :description

      t.timestamps
    end
  end
end
