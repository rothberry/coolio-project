class CreateApiV1Dogs < ActiveRecord::Migration[6.1]
  def change
    create_table :api_v1_dogs do |t|
      t.string :name
      t.string :breed
      t.integer :age
      # t.belongs_to :user, null: false, foreign_key: true
      t.integer :user_id

      t.timestamps
    end
  end
end
