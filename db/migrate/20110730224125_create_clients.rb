class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :first_name
      t.string :last_name
      t.integer :barcode_id
      t.datetime :member_since
      t.string :phone, limit: 25
      t.string :email, limit: 100
      t.string :trainer_notes, limit: 250
      t.integer :client_type
      t.integer :user_id

      t.timestamps
    end
  end
end
