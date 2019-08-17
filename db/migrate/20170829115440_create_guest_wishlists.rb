class CreateGuestWishlists < ActiveRecord::Migration[5.1]
  def change
    create_table :guest_wishlists do |t|
      t.references :user, foreign_key: true
      t.references :wishlist, foreign_key: true

      t.timestamps
    end
  end
end
