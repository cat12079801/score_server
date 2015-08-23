require 'rails_helper'

RSpec.describe Genre, type: :model do
  describe '#name' do
    it 'nil, 空白はダメでそれ以外おｋであること' do
      should validate_presence_of(:name)
    end

    it '1文字以上255文字以内であること' do
      should validate_length_of(:name).is_at_least(1).is_at_most(255)
    end
  end
end
