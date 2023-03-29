class CreateParts < ActiveRecord::Migration[5.2]
  def change
    create_table :parts do |t|
      t.string :name
      t.string :part_number
      t.string :manufacturer
      t.float :price
      t.text :description
      t.references :car, foreign_key: true

      t.timestamps
    end
  end
end
