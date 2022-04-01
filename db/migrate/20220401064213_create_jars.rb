class CreateJars < ActiveRecord::Migration[7.0]
  def change
    create_table :jars do |t|
      t.string :name
      t.string :description
      t.string :currency

      t.timestamps
    end
  end
end
