class CreateDonations < ActiveRecord::Migration[5.1]
  def change
    create_table :donations do |t|
      t.string :description
      t.decimal :value
      t.date :donationDatte

      t.timestamps
    end
  end
end
