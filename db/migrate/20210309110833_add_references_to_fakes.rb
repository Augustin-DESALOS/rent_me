class AddReferencesToFakes < ActiveRecord::Migration[6.0]
  def change
    add_reference :fakes, :user, null: false, foreign_key: true
  end
end
