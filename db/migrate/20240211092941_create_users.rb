class CreateUsers < ActiveRecord::Migration[7.1]
  def change
    create_table :users do |t|
      t.string :email
      t.string :name
      t.boolean :is_admin, default: false
      t.boolean :is_moderator, default: false
      t.boolean :is_published, default: false
      t.string :url
      t.string :image_url

      t.timestamps
    end
    add_index :users, :email, unique: true
  end
end
