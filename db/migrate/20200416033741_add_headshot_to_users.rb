class AddHeadshotToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :headshot, :string
  end
end
