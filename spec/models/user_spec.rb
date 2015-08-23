require 'rails_helper'

RSpec.describe User, type: :model do
  describe '#account' do
    it 'nil, 空白はダメでそれ以外おｋであること' do
      should validate_presence_of(:account)
    end

    it '1文字以上255文字以内であること' do
      should validate_length_of(:account).is_at_least(1).is_at_most(255)
    end
  end

  describe '#admin_flag' do
    it 'nil, 空白はダメでそれ以外おｋであること' do
      should validate_presence_of(:admin_flag)
    end
  end
end
