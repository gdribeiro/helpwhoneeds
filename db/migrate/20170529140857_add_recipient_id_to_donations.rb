class AddRecipientIdToDonations < ActiveRecord::Migration[5.1]
  def change
    add_reference :donations, :recipient, polymorphic:true
  end
end
