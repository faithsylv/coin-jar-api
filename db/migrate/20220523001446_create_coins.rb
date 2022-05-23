class CreateCoins < ActiveRecord::Migration[7.0]
  def change
    create_table :coins do |t|
      t.belongs_to :jar, index: true, foreign_key: true
      t.belongs_to :user, index: true, foreign_key: true
      t.integer :value
      t.string :currency

      t.timestamps
    end
  end
end
