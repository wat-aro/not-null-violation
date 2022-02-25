# frozen_string_literal: true

class Setting < ApplicationRecord
  has_one :account_setting
  has_one :account, through: :account_setting
end
