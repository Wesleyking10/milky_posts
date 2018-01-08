class AddContactToPost < ActiveRecord::Migration[5.1]
  def change
    add_column :posts, :contact, :string
  end
end
