require 'rails_helper'

RSpec.describe Notification, type: :model do
  describe '#title' do
    it 'nil, 空白はダメでそれ以外おｋであること' do
      should validate_presence_of(:title)
    end

    it '1文字以上255文字以内であること' do
      should validate_length_of(:title).is_at_least(1).is_at_most(255)
    end
  end

  describe '#description' do
    it  'nil, 空白はダメでそれ以外おｋであること' do
      should validate_presence_of(:description)
    end

    it '1文字以上であること' do
      should validate_length_of(:description).is_at_least(1)
    end
  end
end
