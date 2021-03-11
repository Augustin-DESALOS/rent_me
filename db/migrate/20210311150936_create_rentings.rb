class CreateRentings < ActiveRecord::Migration[6.0]
  def change
    create_table :rentings do |t|
      t.references :fake, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.date :start_date
      t.date :end_date
      t.integer :price

      t.timestamps
    end
  end
end
