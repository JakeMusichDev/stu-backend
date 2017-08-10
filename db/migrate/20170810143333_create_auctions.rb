class CreateAuctions < ActiveRecord::Migration[5.1]
  def change
    create_table :auctions do |t|
      t.time :start_date
      t.time :end_date
      t.integer :reserve
      t.integer :selling_price
      t.string :winning_bid
      t.references :item, foreign_key: true

      t.timestamps
    end
  end
end
