class CreateMedicines < ActiveRecord::Migration[5.2]
  def change
    create_table :medicines do |t|
      t.string :name
      t.text :composition, array: true
      t.text :description, array: true
      t.integer :group

      t.timestamps
    end
  end
end
