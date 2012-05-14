class CreateSteps < ActiveRecord::Migration
  def change
    create_table :steps do |t|
      t.integer :scenario_id
      t.string :given_when_then
      t.string :body
      t.integer :position

      t.timestamps
    end
  end
end
