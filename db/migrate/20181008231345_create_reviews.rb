class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.integer :author_id, null: false
      t.integer :listing_id, null: false
      t.text :body, null: false
      t.integer :accuracy
      t.integer :location
      t.integer :communication
      t.integer :check_in
      t.integer :cleanliness
      t.integer :value

      t.timestamps
    end
    
    add_index :reviews, :author_id
    add_index :reviews, :listing_id
  end
end
