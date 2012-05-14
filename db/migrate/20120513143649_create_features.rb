class CreateFeatures < ActiveRecord::Migration
  def change
    create_table :features do |t|
      t.text :body

      t.timestamps
    end
  end
end
