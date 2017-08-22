class CreateAuctions < ActiveRecord::Migration[5.1]
  def change
    create_table :auctions do |t|
      t.string :lot_title
      t.string :lot_description
      t.integer :lot_year
      t.string :lot_medium
      t.string :lot_dimensions
      t.timestamp :start_date
      t.timestamp :end_date
      t.integer :reserve
      t.integer :selling_price
      t.string :winning_bid
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
