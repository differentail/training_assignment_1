# frozen_string_literal: true

require './p3'
RSpec.describe(Solve3) do
  it 'solves p3 hehe' do
    s = Solve3.new
    expect(s.solve(1, 1, 1)).to eq('abc')
    expect(s.solve(1, 1, 0)).to eq('ab')
    expect(s.solve(1, 0, 0)).to eq('a')
    expect(s.solve(0, 0, 0)).to eq('')

    expect(s.solve(3, 2, 3)).not_to include('aaa', 'bbb', 'ccc')
    expect(s.solve(3, 2, 3).size).to eq(8)

    expect(s.solve(7, 1, 2)).not_to include('aaa', 'bbb', 'ccc')
    expect(s.solve(7, 1, 2).size).to eq(10)

    expect(s.solve(5, 6, 1)).not_to include('aaa', 'bbb', 'ccc')
    expect(s.solve(5, 6, 1).size).to eq(12)
  end
end
