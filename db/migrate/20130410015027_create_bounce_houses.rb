class CreateBounceHouses < ActiveRecord::Migration
  def change
    create_table :bounce_houses do |t|
      t.string :name
      t.text :description
      t.string :five_hour_rental
      t.string :all_day_rental

      t.timestamps
    end
  end
end
