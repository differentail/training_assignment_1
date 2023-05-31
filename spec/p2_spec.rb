# frozen_string_literal: true

require './p2'

RSpec.describe(Solve2) do
  let(:s) { Solve2.new(tree) }

  describe 'nil tree case' do
    let(:tree) { nil }
    it 'returns 0' do
      expect(s.solve).to eq(0)
    end
  end

  describe 'single node tree case' do
    let(:tree) { Tree.new(1, nil, nil) }
    it 'returns 1' do
      expect(s.solve).to eq(1)
    end
  end

  descibe 'general cases' do
    let(:tree) { Tree.new(8, Tree.new(2, Tree.new(8, nil, nil), Tree.new(7, nil, nil)), Tree.new(6, nil, nil)) }
    #     8
    #    / \
    #   2   6
    #  / \
    # 8   7
    it 'solves correctly' do
      expect(s.solve).to eq(2)
    end

    let(:tree) { Tree.new(8, Tree.new(2, Tree.new(8, nil, nil), Tree.new(7, nil, nil)), Tree.new(10, nil, nil)) }
    #     8
    #    / \
    #   2   10
    #  / \
    # 8   7
    it 'solves correctly' do
      expect(s.solve).to eq(3)
    end

    let(:tree) { Tree.new(10, Tree.new(2, Tree.new(8, nil, nil), Tree.new(7, nil, nil)), Tree.new(6, nil, nil)) }
    #    10
    #    / \
    #   2   6
    #  / \
    # 8   7
    it 'solves correctly' do
      expect(s.solve).to eq(1)
    end
  end
end
