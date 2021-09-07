# frozen_string_literal: true

class AddUserIdToVlogs < ActiveRecord::Migration[5.2]
  def change
    add_column :vlogs, :user_id, :integer
  end
end
