class CreateMessages < ActiveRecord::Migration[6.0]
  def change
    create_table :messages do |t|
      t.string :name
      t.string :email
      t.text :messgae

      t.timestamps
    end
  end
end
