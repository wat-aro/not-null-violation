# frozen_string_literal: true

require "rails_helper"

RSpec.describe Account do
  describe "build setting" do
    context "persisted" do
      let(:account) { create(:account) }

      specify do
        account.touch_setting
        expect(account.setting).to be_present
      end
    end

    context "not persisted" do
      let(:account) { build(:account) }

      specify do
        account.touch_setting
        expect(account.setting).to be_present
      end
    end
  end
end
