class AddHonorificToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :honorific, :string
  end
end
