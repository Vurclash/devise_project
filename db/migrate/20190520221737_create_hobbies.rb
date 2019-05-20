class CreateHobbies < ActiveRecord::Migration[5.2]
  def change
    create_table :hobbies do |t|
      t.name :
      t.description :
      t.belongs_to :user, foreign_key: true

      t.timestamps
    end
  end
end
