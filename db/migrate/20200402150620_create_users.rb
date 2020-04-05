class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :password_digest
      t.string :voice_type
      t.text :biography
      t.string :degree
      t.string :institution
      t.string :website

      t.timestamps
    end
  end
end
