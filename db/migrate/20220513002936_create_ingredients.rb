class CreateIngredients < ActiveRecord::Migration[7.0]
  def change
    create_table :ingredients do |t|

      t.string :name
      t.text :description
      t.float :quantity
      t.string :unit_of_measure
      t.belongs_to :pantry
      t.timestamps
    end
  end
end
