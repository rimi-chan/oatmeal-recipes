class CreatePowders < ActiveRecord::Migration[6.1]
  def change
    create_table :powders do |t|
      t.string :powder_name
      t.text :powder_instructions
      t.string :powder_image_id
      t.text :powder_tool
      t.text :powder_word
      t.integer :user_id
      t.timestamps
    end
  end
end
