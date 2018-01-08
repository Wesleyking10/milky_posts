class AddPriceToPosts < ActiveRecord::Migration[5.1]
  def change
    add_column :posts, :price, :string
  end
end
