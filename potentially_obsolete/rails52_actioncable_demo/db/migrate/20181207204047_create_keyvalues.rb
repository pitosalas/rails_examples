class CreateKeyvalues < ActiveRecord::Migration[5.2]
  def change
    create_table :keyvalues do |t|
      t.string :key
      t.string :value

      t.timestamps
    end
  end
end
