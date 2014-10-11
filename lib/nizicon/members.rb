module Nizicon
  require "singleton"
  require 'date'

  class Members
    include Singleton
    include Enumerable

    def all
      [
          NagataMinari.instance,
          ShigematsuYuka.instance,
          OkumuraNonoka.instance,
          KinoshitaHiyori.instance,
          SuyamaEmiri.instance,
          NakamuraAkari.instance,
          NishiNanami.instance,
          NemotoNagi.instance,
          MatobaKarin.instance,
          YoshimuraNana.instance,
      ]
    end

    def each
      all.each do |member|
        yield member
      end
    end

    def size
      all.size
    end

    class NagataMinari
      include Singleton

      def position; '委員長'; end
      def name; '長田 美成'; end
      def nickname; 'みなりん'; end
      def birthday; Date.new 1997, 12, 17; end
      def hometown; '山口県'; end
      def twitter_id; '@nagata_minari'; end

      alias_method :to_s, :nickname
    end

    class ShigematsuYuka
      include Singleton

      def position; '副委員長'; end
      def name; '重松 佑佳'; end
      def nickname; 'しげちー'; end
      def birthday; Date.new 1996, 5, 20; end
      def hometown; '福岡県'; end
      def twitter_id; '@shigematsu_yuka'; end

      alias_method :to_s, :nickname
    end

    class OkumuraNonoka
      include Singleton

      def name; '奥村 野乃花'; end
      def nickname; 'ののた'; end
      def birthday; Date.new 2001, 1, 4; end
      def hometown; '東京都'; end
      def twitter_id; '@okumura_nonoka'; end

      alias_method :to_s, :nickname
    end

    class KinoshitaHiyori
      include Singleton

      def name; '木下 ひより'; end
      def nickname; 'ひよりん'; end
      def birthday; Date.new 1997, 12, 9; end
      def hometown; '東京都'; end
      def twitter_id; '@kinosita_hiyori'; end

      alias_method :to_s, :nickname
    end

    class SuyamaEmiri
      include Singleton

      def name; '陶山 恵実里'; end
      def nickname; 'えみりぃ'; end
      def birthday; Date.new 1999, 5, 26; end
      def hometown; '東京都'; end
      def twitter_id; '@suyama_emiri'; end

      alias_method :to_s, :nickname
    end

    class NakamuraAkari
      include Singleton

      def name; '中村 朱里'; end
      def nickname; 'あかりん'; end
      def birthday; Date.new 1998, 1, 30; end
      def hometown; '千葉県'; end
      def twitter_id; '@nakamura_akari'; end

      alias_method :to_s, :nickname
    end

    class NishiNanami
      include Singleton

      def name; '西 七海'; end
      def nickname; 'ななぴ'; end
      def birthday; Date.new 1996, 10, 9; end
      def hometown; '東京都'; end
      def twitter_id; '@nishi_nanami'; end

      alias_method :to_s, :nickname
    end

    class NemotoNagi
      include Singleton

      def name; '根本 凪'; end
      def nickname; 'ねも'; end
      def birthday; Date.new 1999, 3, 15; end
      def hometown; '茨城県'; end
      def twitter_id; '@nemoto_nagi'; end
      def pixiv_id; 'ID 11797412'; end

      alias_method :to_s, :nickname
    end

    class MatobaKarin
      include Singleton

      def name; '的場 華鈴'; end
      def nickname; 'かりん、かりんさま'; end
      def birthday; Date.new 2000, 12, 30; end
      def hometown; '埼玉県'; end
      def twitter_id; '@matoba_karin'; end

      alias_method :to_s, :nickname
    end

    class YoshimuraNana
      include Singleton

      def name; '吉村 菜々'; end
      def nickname; 'なぁな'; end
      def birthday; Date.new 1999, 8, 2; end
      def hometown; '神奈川県'; end
      def twitter_id; '@yoshimura_nana'; end

      def to_s
        'ハム'
      end
    end
  end
end
