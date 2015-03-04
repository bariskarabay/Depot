class CreateLineItems < ActiveRecord::Migration
  def change
    create_table :line_items do |t|
      t.references :product, index: true
      t.string :cart;references

      t.timestamps
    end
  end
end
