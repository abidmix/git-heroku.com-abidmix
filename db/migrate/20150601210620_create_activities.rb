class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.string :code
      t.string :description

      t.timestamps null: false
    end
  end
end
