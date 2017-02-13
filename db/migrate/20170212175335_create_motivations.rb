class CreateMotivations < ActiveRecord::Migration[5.0]
  def change
    create_table :motivations do |t|
      t.text :quote
      t.text :comment

      t.timestamps
    end
  end
end
