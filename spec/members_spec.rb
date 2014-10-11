require 'spec_helper'

describe Nizicon::Members do
  describe described_class::NagataMinari do
    it 'birthday' do
      expect(described_class.instance.birthday.to_s).to eq('1997-12-17')
    end
  end

  describe described_class::ShigematsuYuka do
    it 'birthday' do
      expect(described_class.instance.birthday.to_s).to eq('1996-05-20')
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
  end
end
