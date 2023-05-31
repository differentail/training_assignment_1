# frozen_string_literal: true

require './p2'

RSpec.describe(Solve2) do
  it 'solves problem 2 kekw' do
    s = Solve2.new(nil)
    expect(s.solve).to eq(0)
    s = Solve2.new(Tree.new(1, nil, nil))
    expect(s.solve).to eq(1)
    t = Tree.new(8, Tree.new(2, Tree.new(8, nil, nil), Tree.new(7, nil, nil)), Tree.new(6, nil, nil))
    s = Solve2.new(t)
    expect(s.solve).to eq(2)
    t = Tree.new(8, Tree.new(2, Tree.new(8, nil, nil), Tree.new(7, nil, nil)), Tree.new(10, nil, nil))
    s = Solve2.new(t)
    expect(s.solve).to eq(3)
    t = Tree.new(10, Tree.new(2, Tree.new(8, nil, nil), Tree.new(7, nil, nil)), Tree.new(6, nil, nil))
    s = Solve2.new(t)
    expect(s.solve).to eq(1)
  end
end
