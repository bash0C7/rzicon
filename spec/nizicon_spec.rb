require 'spec_helper'

describe Nizicon do
  it 'should have a version number' do
    expect(Nizicon::VERSION).not_to be_nil
  end

  describe "Nizicon." do
    it 'name' do
      expect(Nizicon.name).to eq('虹のコンキスタドール')
    end

    it 'to_s' do
      expect(Nizicon.to_s).to eq(Nizicon.name)
    end
  end
end
