class CreateUserSignatures < ActiveRecord::Migration
  def change
    create_table :user_signatures do |t|
      t.string :name
      t.string :description
      t.string :signature

      t.timestamps
    end
  end
end
