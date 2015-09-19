require 'rails_helper'

RSpec.describe Team, type: :model do
  describe 'team_point' do
    context '合計点0のとき' do
      before do
        @team = Team.create(name: 'テスト')
      end

      it 'validである' do
        expect(@team.team_point).to eq 0
      end
    end

    context '合計点100のとき' do
      before do
        @team = Team.create(name: 'テスト')
        problem = Problem.create(point: 100, title: 'hoge', question: 'hoge', flag: 'flag_hoge', genre_id: 1)
        @team.problems << problem
      end

      it 'validである' do
        expect(@team.team_point).to eq 100
      end
    end
  end

  describe '#point' do
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
