require 'rails_helper'

RSpec.describe SentFlag, type: :model do
  describe '#flag' do
    it 'nil, 空白はダメでそれ以外おｋであること' do
      should validate_presence_of(:flag)
    end

    it '1文字以上255文字以内であること' do
      should validate_length_of(:flag).is_at_least(1).is_at_most(255)
    end
  end

  describe '#collect' do
    it 'nil, 空白はダメでそれ以外おｋであること' do
      should validate_presence_of(:collect)
    end
  end
end
