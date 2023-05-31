# frozen_string_literal: true

require './p1'
RSpec.describe Solve1 do
  let(:s) { Solve1.new(number) }

  describe 'easy cases' do
    let(:number) { 1234 }
    it 'solves correctly' do
      expect(s.solve).to eq(4321)
    end

    let(:number) { 1001 }
    it 'solves correctly' do
      expect(s.solve).to eq(1100)
    end

    let(:number) { 9879 }
    it 'solves correctly' do
      expect(s.solve).to eq(9987)
    end
  end

  describe 'two digits case' do
    let(:number) { 45 }
    it 'solves correctly' do
      expect(s.solve).to eq(54)
    end
  end

  describe 'single digits cases' do
    let(:number) { 8 }
    it 'solves correctly' do
      expect(s.solve).to eq(8)
    end

    let(:number) { 0 }
    it 'solves correctly' do
      expect(s.solve).to eq(0)
    end
  end

  describe 'big numbers cases' do
    let(:number) { 758_493 }
    it 'solves correctly' do
      expect(s.solve).to eq(987_543)
    end

    let(:number) { 987_543 }
    it 'solves correctly' do
      expect(s.solve).to eq(987_543)
    end
  end
end
