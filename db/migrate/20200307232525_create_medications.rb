class CreateMedications < ActiveRecord::Migration[5.2]
  def change
    create_table :medications do |t|
      t.references :disease, foreign_key: true
      t.references :medicine, foreign_key: true
      t.integer :situation

      t.timestamps
    end
  end
end
