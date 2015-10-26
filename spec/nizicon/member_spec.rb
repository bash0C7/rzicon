require 'spec_helper'

describe Nizicon::Member do
  describe 'ClassMethods' do
    describe '.all' do
      subject { described_class.all }

      it 'returns members' do
        is_expected.to all(be_a(described_class))
      end

      it 'returns 11 members' do
        expect(subject.size).to eq(16)
      end
    end

    describe '.find' do
      subject { described_class.find(1) }

      it 'returns first member' do
        is_expected.to be_a(described_class)
        expect(subject.id).to eq(1)
      end
    end
  end

  describe 'InstanceMethods' do
    let(:instance) { described_class.all.first }

    describe '#introduction' do
      subject { instance.introduction }

      it 'introductions oneself' do
        is_expected.to be_a(Array)
                  .and be_any { |line| line =~ /#{instance.nickname}/ }
      end
    end
  end
end
