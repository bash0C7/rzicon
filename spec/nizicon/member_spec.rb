require 'spec_helper'

describe Nizicon::Member do
  describe '.all' do
    subject { described_class.all }

    it 'returns members' do
      is_expected.to all(be_a(described_class))
    end

    it 'returns 11 members' do
      expect(subject.size).to eq(11)
    end
  end

  describe '#introduction' do
    subject { instance.introduction }
    let(:instance) { described_class.all.first }

    it 'introductions oneself' do
      is_expected.to be_a(Array)
                .and be_any { |line| line =~ /#{instance.nickname}/ }
    end
  end
end
