class CreateLevels < ActiveRecord::Migration[6.1]
  def change
    create_table :levels do |t|
      t.string :word
      t.string :hint

      t.timestamps
    end
  end
end
