# frozen_string_literal: true

class AccountSetting < ApplicationRecord
  belongs_to :account
  belongs_to :setting
end
