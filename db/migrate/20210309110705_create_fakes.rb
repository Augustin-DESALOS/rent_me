class CreateFakes < ActiveRecord::Migration[6.0]
  def change
    create_table :fakes do |t|
      t.string :nickname
      t.string :url
      t.string :category
      t.string :personality
      t.string :description
      t.integer :price
      t.integer :rating

      t.timestamps
    end
  end
end
