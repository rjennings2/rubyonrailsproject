class CreateStarships < ActiveRecord::Migration[7.2]
  def change
    create_table :starships do |t|
      t.string :name
      t.string :model
      t.string :crew

      t.timestamps
    end
  end
end
