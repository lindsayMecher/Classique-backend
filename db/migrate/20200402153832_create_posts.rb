class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.string :performance_type
      t.string :voice_type
      t.date :date
      t.time :time
      t.text :repertoire
      t.text :notes
      t.string :venue_name
      t.string :street_address
      t.string :city
      t.string :state
      t.integer :zip
      t.string :contact_first_name
      t.string :contact_last_name
      t.string :contact_email
      t.boolean :paid

      t.timestamps
    end
  end
end
