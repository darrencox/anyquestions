class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.date :date
      t.text :summary
      t.string :location
      t.float :lat
      t.float :long
      t.datetime :starts
      t.datetime :ends
      t.string :cover_img
      t.string :subtitle

      t.timestamps null: false
    end
  end
end
