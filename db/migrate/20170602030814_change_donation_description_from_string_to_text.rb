class ChangeDonationDescriptionFromStringToText < ActiveRecord::Migration[5.1]
  def up
    change_column :donations, :description, :text
  end

  def down
    change_column :donations, :description, :string
  end
end
