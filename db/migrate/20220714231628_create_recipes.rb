class CreateRecipes < ActiveRecord::Migration[7.0]
  def change
    create_table :recipes do |t|

      t.string :name
      t.string :source
      t.string :url
      t.float :yield
      t.text :ingredient_text
      t.float :calories
      t.string :cuisine_type

      t.timestamps
    end
  end
end
