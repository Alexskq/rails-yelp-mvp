class RemoveColumnRestId < ActiveRecord::Migration[7.0]
  def change
    remove_column :restaurants, :restaurant_id
  end
end
