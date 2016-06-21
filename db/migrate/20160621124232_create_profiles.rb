class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.references :user, index: true, foreign_key: true
      t.string :image
      t.string :expertise
      t.string :city
      t.string :country
      t.string :website
      t.text :bio

      t.timestamps null: false
    end
  end
end
