class AddPronounsToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :pronouns, :string
  end
end
