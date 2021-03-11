class AddAddressToFakes < ActiveRecord::Migration[6.0]
  def change
    add_column :fakes, :address, :string
  end
end
