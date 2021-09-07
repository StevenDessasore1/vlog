# frozen_string_literal: true

class CreateVlogs < ActiveRecord::Migration[5.2]
  def change
    create_table :vlogs do |t|
      t.string  :name
      t.string  :genre
      t.text    :description
    end
  end
end
