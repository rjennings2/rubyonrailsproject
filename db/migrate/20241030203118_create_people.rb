class CreatePeople < ActiveRecord::Migration[7.2]
  def change
    create_table :people do |t|
      t.string :name
      t.string :height
      t.string :mass
      t.string :hair_color
      t.references :planet, null: false, foreign_key: true

      t.timestamps
    end
  end
end
