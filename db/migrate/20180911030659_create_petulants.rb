class CreatePetulants < ActiveRecord::Migration[5.2]
  def change
    create_table :petulants do |t|
      t.text :body
      t.belongs_to :whiner, foreign_key: true
      t.belongs_to :answer, foreign_key: true

      t.timestamps
    end
  end
end
