require 'rails_helper'

RSpec.describe Problem, type: :model do
  describe '#title' do
    it 'nil, 空白はダメでそれ以外おｋであること' do
      should validate_presence_of(:title)
    end

    it '1文字以上255文字以内であること' do
      should validate_length_of(:title).is_at_least(1).is_at_most(255)
    end
  end

  describe '#question' do
    it 'nil, 空白はダメでそれ以外おｋであること' do
      should validate_presence_of(:question)
    end

    it '1文字以上であること' do
      should validate_length_of(:question).is_at_least(1)
    end
  end

  describe '#flag' do
    it 'nil, 空白はダメでそれ以外おｋであること' do
      should validate_presence_of(:flag)
    end

    it '1文字以上255文字以内であること' do
      should validate_length_of(:flag).is_at_least(1).is_at_most(255)
    end

    it 'FLAG_hogehogeのフォーマットであること' do
      expect(:flag).to match /\AFLAG_/
    end
  end

  describe '#opened' do
    it 'nil, 空白はダメでそれ以外おｋであること' do
      should validate_presence_of(:opened)
    end
  end

  describe '#point' do
    it 'nil, 空白はダメでそれ以外おｋであること' do
      should validate_presence_of(:point)
    end

    describe '値が0のとき' do
      let(:person_chart) { PersonChart.new(point: 0) }

      it 'validである' do
        person_chart.valid?
        expect(person_chart.errors[:point]).to be_blank
      end
    end

    describe '値が1000のとき' do
      let(:person_chart) { PersonChart.new(point: 1000) }

      it 'validである' do
        person_chart.valid?
        expect(person_chart.errors[:point]).to be_blank
      end
    end

    describe '値が-1のとき' do
      let(:person_chart) { PersonChart.new(point: -1) }

      it 'validでない' do
        person_chart.valid?
        expect(person_chart.errors[:point]).to be_present
      end
    end
  end
end
