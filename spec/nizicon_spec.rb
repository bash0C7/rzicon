require 'spec_helper'

describe Nizicon do
  it 'should have a version number' do
    expect(Nizicon::VERSION).not_to be_nil
  end

  describe "Nizicon." do
    it 'name' do
      expect(Nizicon.name).to eq('虹のコンキスタドール')
    end

    it 'from' do
      expect(Nizicon.from).to eq('つくドル！プロジェクト')
    end

    it 'members' do
      expect(Nizicon.members.size).to eq(10)
    end
  end
end
