class RemoveDonationDatteFromDonations < ActiveRecord::Migration[5.1]
  def change
    remove_column :donations, :donationDatte, :date
  end
end
