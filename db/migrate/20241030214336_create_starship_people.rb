class CreateStarshipPeople < ActiveRecord::Migration[7.2]
  def change
    create_table :starship_people do |t|
      t.references :person, null: false, foreign_key: true
      t.references :starship, null: false, foreign_key: true

      t.timestamps
    end
  end
end
