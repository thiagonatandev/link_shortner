class CreateLinks < ActiveRecord::Migration[8.0]
  def change
    create_table :links do |t|
      t.string :original_url
      t.string :short_code
      t.integer :clicks_count
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
    add_index :links, :short_code
  end
end
