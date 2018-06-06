class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.string :user
      t.string :string
      t.string :title
      t.text :body

      t.timestamps
    end
  end
end
