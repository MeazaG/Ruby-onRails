class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :description
      t.decimal :ticket_price
      t.integer :rating_stars

      t.timestamps
    end
  end
end