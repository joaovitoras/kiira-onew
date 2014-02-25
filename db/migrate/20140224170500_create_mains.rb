class CreateMains < ActiveRecord::Migration
  def change
    create_table :mains do |t|
      t.text :heroinfo
      t.string :titlenews
      t.text :newscontent

      t.timestamps
    end
  end
end
