class AddGuestNumToBookings < ActiveRecord::Migration[5.2]
  def change
    add_column :bookings, :guest_num, :integer, null: false
  end
end
