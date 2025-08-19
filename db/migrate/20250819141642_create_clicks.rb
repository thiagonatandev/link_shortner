class CreateClicks < ActiveRecord::Migration[8.0]
  def change
    create_table :clicks do |t|
      t.references :link, null: false, foreign_key: true
      t.string :ip
      t.string :country
      t.string :browser
      t.string :os

      t.timestamps
    end
  end
end
