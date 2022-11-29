class CreateOats < ActiveRecord::Migration[6.1]
  def change
    create_table :oats do |t|
      t.string :oat_name
      t.text :oat_instructions
      t.string :oat_image_id
      t.text :oat_tool
      t.text :oat_word
      t.integer :user_id
      t.timestamps
    end
  end
end
