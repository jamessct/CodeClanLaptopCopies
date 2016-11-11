class AddLightsaberToAnimal < ActiveRecord::Migration
  def change
    add_column :animals, :Lightsaber, :string
  end
end
