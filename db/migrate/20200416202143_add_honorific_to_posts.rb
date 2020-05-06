class AddHonorificToPosts < ActiveRecord::Migration[6.0]
  def change
    add_column :posts, :user_honorific, :string
  end
end
