class CreateDiseases < ActiveRecord::Migration[5.2]
  def change
    create_table :diseases do |t|
      t.string :name
      t.string :description
      t.string :cid

      t.timestamps
    end
  end
end
