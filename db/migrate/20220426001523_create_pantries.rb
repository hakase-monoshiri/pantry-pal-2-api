class CreatePantries < ActiveRecord::Migration[7.0]
  def change
    create_table :pantries do |t|
      t.string :name
      t.string :description
      t.belongs_to :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
