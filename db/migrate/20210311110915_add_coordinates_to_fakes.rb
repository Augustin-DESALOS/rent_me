class AddCoordinatesToFakes < ActiveRecord::Migration[6.0]
  def change
    add_column :fakes, :latitude, :float
    add_column :fakes, :longitude, :float
  end
end
