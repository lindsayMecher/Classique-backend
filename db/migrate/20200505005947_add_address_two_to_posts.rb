class AddAddressTwoToPosts < ActiveRecord::Migration[6.0]
  def change
    add_column :posts, :address_line_two, :string
  end
end
