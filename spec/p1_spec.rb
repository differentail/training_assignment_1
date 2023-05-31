# frozen_string_literal: true

require './p1'
RSpec.describe Solve1 do
  it 'solves p1 lol' do
    s = Solve1.new(1234)
    expect(s.solve).to eq(4321)
    s = Solve1.new(1001)
    expect(s.solve).to eq(1100)
    s = Solve1.new(9879)
    expect(s.solve).to eq(9987)
    s = Solve1.new(45)
    expect(s.solve).to eq(54)
    s = Solve1.new(0)
    expect(s.solve).to eq(0)
    s = Solve1.new(8)
    expect(s.solve).to eq(8)
    s = Solve1.new(758_493)
    expect(s.solve).to eq(987_543)
    s = Solve1.new(987_543)
    expect(s.solve).to eq(987_543)
  end
end
