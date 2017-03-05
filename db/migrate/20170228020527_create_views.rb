class CreateViews < ActiveRecord::Migration[5.0]
  def change
    create_table :views do |t|
      t.integer :view_count

      t.timestamps
    end
  end
end
