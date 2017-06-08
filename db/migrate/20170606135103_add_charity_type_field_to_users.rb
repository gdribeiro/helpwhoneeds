class AddCharityTypeFieldToUsers < ActiveRecord::Migration[5.1]
  def change
  	add_column :users, :charity_type, :string
  end
end
