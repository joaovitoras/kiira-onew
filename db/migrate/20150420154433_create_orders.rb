class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :user_name
      t.string :user_mail
      t.references :product, index: true
      t.string :facebook_contact

      t.timestamps
    end
  end
end
