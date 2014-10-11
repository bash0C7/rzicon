require 'spec_helper'

describe Nizicon::Core do
    it do
      expect(described_class.instance.name).to eq('虹のコンキスタドール')
    end

    it do
      expect(described_class.instance.from).to eq('つくドル！プロジェクト')
    end

    it do
      expect(described_class.instance.members).not_to be_nil
    end

    it do
      expect(described_class.instance.twitter_id).not_to be_nil
    end

    it do
      expect(described_class.instance.blog_uri).not_to be_nil
    end

    it do
      expect(described_class.instance.website_uri).not_to be_nil
    end

    it do
      expect(described_class.instance.showroom_uri).not_to be_nil
    end

end
