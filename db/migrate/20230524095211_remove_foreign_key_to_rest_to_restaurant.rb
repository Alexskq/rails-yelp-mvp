class RemoveForeignKeyToRestToRestaurant < ActiveRecord::Migration[7.0]
  def change
    remove_foreign_key :restaurants, :restaurants
  end
end
