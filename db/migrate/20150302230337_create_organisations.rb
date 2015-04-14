class CreateOrganisations < ActiveRecord::Migration
  def change
    create_table :organisations do |t|
      t.string :name
      t.string :subtitle
      t.string :profile_pic

      t.timestamps null: false
    end
  end
end
