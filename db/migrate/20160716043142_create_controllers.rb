class CreateControllers < ActiveRecord::Migration
  def change
    create_table :controllers do |t|
      t.text :image
      t.text :text

      t.timestamps
    end
  end
end
