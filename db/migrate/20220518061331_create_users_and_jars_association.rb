class CreateUsersAndJarsAssociation < ActiveRecord::Migration[7.0]
  def change
    create_table :jars_users do |t|
      t.belongs_to :jar
      t.belongs_to :user
      t.timestamps
    end
  end
end
