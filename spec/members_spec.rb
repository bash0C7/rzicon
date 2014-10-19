require 'spec_helper'

describe Nizicon::Members do
  it do
    expect(described_class.instance.size).to eq(10)
  end

  it do
    expect(described_class.instance.all.size).to eq(10)
  end

  it do
    expect(described_class.instance.all.each).not_to be_nil
  end

  describe described_class.instance.all.sample.class do
    it 'to_hash' do
      expect(described_class.instance.to_hash.class).to eq(Hash)
    end
  end

  describe described_class::NagataMinari do
    it 'birthday' do
      expect(described_class.instance.birthday.to_s).to eq('1997-12-17')
    end

    it do
      expect(described_class.instance.position).not_to be_nil
    end
  end

  describe described_class::ShigematsuYuka do
    it 'birthday' do
      expect(described_class.instance.birthday.to_s).to eq('1996-05-20')
    end

    it do
      expect(described_class.instance.position).not_to be_nil
    end
  end

  describe described_class::OkumuraNonoka do
    it 'birthday' do
      expect(described_class.instance.birthday.to_s).to eq('2001-01-04')
    end
  end

  describe described_class::KinoshitaHiyori do
    it 'birthday' do
      expect(described_class.instance.birthday.to_s).to eq('1997-12-09')
    end
  end

  describe described_class::SuyamaEmiri do
    it 'birthday' do
      expect(described_class.instance.birthday.to_s).to eq('1999-05-26')
    end
  end

  describe described_class::NakamuraAkari do
    it 'birthday' do
      expect(described_class.instance.birthday.to_s).to eq('1998-01-30')
    end
  end

  describe described_class::NishiNanami do
    it 'birthday' do
      expect(described_class.instance.birthday.to_s).to eq('1996-10-09')
    end
  end

  describe described_class::NemotoNagi do
    it 'birthday' do
      expect(described_class.instance.birthday.to_s).to eq('1999-03-15')
    end

    it do
      expect(described_class.instance.pixiv_id).not_to be_nil
    end
  end

  describe described_class::MatobaKarin do
    it 'birthday' do
      expect(described_class.instance.birthday.to_s).to eq('2000-12-30')
    end
  end

  describe described_class::YoshimuraNana do
    it 'birthday' do
      expect(described_class.instance.birthday.to_s).to eq('1999-08-02')
    end

    it do
      expect(described_class.instance.to_s).not_to eq(described_class.instance.nickname)
    end
  end
end
