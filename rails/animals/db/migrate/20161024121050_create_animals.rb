class CreateAnimals < ActiveRecord::Migration
  def change
    create_table :animals do |t|
      t.text :name

      t.timestamps null: false
    end
  end
end
