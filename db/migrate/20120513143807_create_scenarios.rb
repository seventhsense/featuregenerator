class CreateScenarios < ActiveRecord::Migration
  def change
    create_table :scenarios do |t|
      t.integer :feature_id
      t.string :body

      t.timestamps
    end
  end
end
