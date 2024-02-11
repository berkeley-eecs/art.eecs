class CreateArt < ActiveRecord::Migration[7.1]
  def change
    create_table :art do |t|
      t.string :title, null: false
      t.text :artist_name
      t.references :last_editor, null: false, foreign_key: { to_table: 'users' }
      t.date :art_created_date
      t.string :created_location
      t.string :url
      t.string :classification
      t.boolean :is_published, default: false
      t.references :location, null: false, foreign_key: true
      t.references :artist, null: true, foreign_key: { to_table: 'users' }

      t.timestamps
    end

    add_index :art, :title, unique: true
  end
end
