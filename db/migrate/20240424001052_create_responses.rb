class CreateResponses < ActiveRecord::Migration[7.1]
  def change
    create_table :responses do |t|
      t.references :survey, null: false, foreign_key: true
      t.boolean :answer
      t.datetime :created_at

      t.timestamps
    end
  end
end
