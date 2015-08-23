require 'rails_helper'

RSpec.describe Team, type: :model do
  describe '#name' do
    it 'nil, 空白はダメでそれ以外おｋであること' do
      should validate_presence_of(:name)
    end

    it '1文字以上255文字以内であること' do
      should validate_length_of(:name).is_at_least(1).is_at_most(255)
    end
  end

  describe '#solved_problem' do
    it 'nil, 空白はダメでそれ以外おｋであること' do
      should validate_presence_of(:solved_problem)
    end

    it '0文字以上であること' do
      should validate_length_of(:solved_problem).is_at_least(0)
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
