class CreateListings < ActiveRecord::Migration[5.2]
  def change
    create_table :listings do |t|
      t.string :name, null: false
      t.integer :host_id, null: false
      t.text :description, null: false
      t.float :price, null: false
      t.integer :room_num, null: false
      t.integer :bed_num, null: false
      t.integer :bath_num, null: false
      t.boolean :air_conditioning, null: false
      t.boolean :heating, null: false
      t.boolean :essentials, null: false
      t.boolean :wifi, null: false
      t.boolean :tv, null: false
      t.boolean :washer, null: false
      t.boolean :kitchen, null: false
      t.boolean :free_parking, null: false
      t.boolean :hair_dryer, null: false
      t.boolean :shampoo, null: false
      t.string :address, null: false
      t.string :city, null: false
      t.string :state, null: false
      t.string :country, null: false
      t.string :zipcode
      t.float :lat, null: false
      t.float :lng, null: false

      t.timestamps
    end
    add_index :listings, :host_id
    add_index :listings, :city
    add_index :listings, :country
  end
end
