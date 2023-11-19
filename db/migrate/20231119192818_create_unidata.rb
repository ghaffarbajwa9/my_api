class CreateUnidata < ActiveRecord::Migration[7.1]
  def change
    create_table :unidata do |t|
      t.string :alph_two_code
      t.string :domain
      t.text :web_pages
      t.string :name
      t.string :state_province
      t.string :country

      t.timestamps
    end
  end
end
