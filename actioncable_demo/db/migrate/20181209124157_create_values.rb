class CreateValues < ActiveRecord::Migration[5.2]
  def change
    create_table :values do |t|
      t.string :name
      t.string :value

      t.timestamps
    end
  end
end
