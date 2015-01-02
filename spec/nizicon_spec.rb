require 'spec_helper'

describe Nizicon do
  it 'should have a version number' do
    expect(Nizicon::VERSION).to_not be_empty
  end

  describe 'Classmethods' do
    describe '.name' do
      subject { described_class.name }
      it { expect(described_class.name).to eq('虹のコンキスタドール') }
    end

    describe '.from' do
      subject { described_class.from }
      it { is_expected.to eq('つくドル！プロジェクト') }
    end

    describe '.members' do
      subject { described_class.members }
      it { is_expected.to be_a(Array) }
    end

    shared_examples_for 'a attribute of' do |key|
      describe ".#{key}" do
        subject { described_class.send(key) }
        it { is_expected.to_not be_nil }
      end
    end

    it_behaves_like 'a attribute of', :blog_uri
    it_behaves_like 'a attribute of', :website_uri
    it_behaves_like 'a attribute of', :showroom_uri
  end
end
