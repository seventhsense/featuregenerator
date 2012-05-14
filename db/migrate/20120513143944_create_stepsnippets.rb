class CreateStepsnippets < ActiveRecord::Migration
  def change
    create_table :stepsnippets do |t|
      t.string :given_when_then
      t.string :body

      t.timestamps
    end
  end
end
