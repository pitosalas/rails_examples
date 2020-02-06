class CreatePages < ActiveRecord::Migration[5.1]
  def change
    create_table :pages do |t|
      t.string :content
      t.integer :chapter_id

      t.timestamps
    end
  end
end
