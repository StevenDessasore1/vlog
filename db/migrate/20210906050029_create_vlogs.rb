class CreateVlogs < ActiveRecord::Migration
  def change
    create_table :vlogs do |t|
      t.string  :name
      t.string  :genre
      t.text    :description  
    end
  end
end
