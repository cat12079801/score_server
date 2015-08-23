require 'rails_helper'

RSpec.describe TeamChart, type: :model do
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

  describe '#times' do
    it 'nil, 空白はダメでそれ以外おｋであること' do
      should validate_presence_of(:times)
    end

    describe '値が0のとき' do
      let(:person_chart) { PersonChart.new(times: 0) }

      it 'validである' do
        person_chart.valid?
        expect(person_chart.errors[:times]).to be_blank
      end
    end

    describe '値が1000のとき' do
      let(:person_chart) { PersonChart.new(times: 1000) }

      it 'validである' do
        person_chart.valid?
        expect(person_chart.errors[:times]).to be_blank
      end
    end

    describe '値が-1のとき' do
      let(:person_chart) { PersonChart.new(times: -1) }

      it 'validでない' do
        person_chart.valid?
        expect(person_chart.errors[:times]).to be_present
      end
    end
  end
end
