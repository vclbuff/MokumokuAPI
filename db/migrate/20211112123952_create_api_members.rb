class CreateApiMembers < ActiveRecord::Migration[6.1]
  def change
    create_table :api_members do |t|
      t.string :name
      t.text :greeting

      t.timestamps
    end
  end
end
