class CreateItems < ActiveRecord::Migration[5.1]
  def change
    create_table :items do |t|
      t.string :title
      t.integer :year
      t.string :medium
      t.string :provenance
      t.string :dimensions
      t.string :reserve
      t.references :user, foreign_key: true 

      t.timestamps
    end
  end
end
