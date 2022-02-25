# frozen_string_literal: true

class Account < ApplicationRecord
  has_one :account_setting
  has_one :setting, through: :account_setting

  def touch_setting
    self.setting = Setting.new
  end
end
