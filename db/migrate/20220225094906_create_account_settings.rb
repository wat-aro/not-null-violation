# frozen_string_literal: true

class CreateAccountSettings < ActiveRecord::Migration[7.0]
  def change
    create_table :account_settings do |t|
      t.references :account, null: false, foreign_key: true
      t.references :setting, null: false, foreign_key: true

      t.timestamps
    end
  end
end
