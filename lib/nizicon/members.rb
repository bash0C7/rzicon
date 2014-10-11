module Nizicon
  require "singleton"
  require 'date'

  class Members
    include Singleton
    include Enumerable

    module Util
      def age current_date = Date.today
        current_date.year - birthday.year - (current_date.yday < birthday.yday ? 1 : 0)
      end
    end

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
      include Util

      def position; '委員長'; end
      def name; '長田 美成'; end
      def nickname; 'みなりん'; end
      def birthday; Date.new 1997, 12, 17; end
      def hometown; '山口県'; end
      def twitter_id; '@nagata_minari'; end
      def introduction
        [
            "今日はみなりんマジックでみんなを笑顔にしちゃるけん。",
            "#{hometown}出身の#{age}歳。頼れる#{position}。",
            "＼えーっ！／",
            "アイドルがぶち大好きな#{nickname}こと#{name}です。",
        ]
      end

      alias_method :to_s, :nickname
    end

    class ShigematsuYuka
      include Singleton
      include Util

      def position; '副委員長'; end
      def name; '重松 佑佳'; end
      def nickname; 'しげちー'; end
      def birthday; Date.new 1996, 5, 20; end
      def hometown; '福岡県'; end
      def twitter_id; '@shigematsu_yuka'; end
      def introduction
        [
            "博多からきたダイヤモンドの原石。みーんなの愛で輝かせてほしいと。",
            "#{hometown}出身の#{age}歳。",
            "#{nickname}こと#{name}です。",
        ]
      end

      alias_method :to_s, :nickname
    end

    class OkumuraNonoka
      include Singleton
      include Util

      def name; '奥村 野乃花'; end
      def nickname; 'ののた'; end
      def birthday; Date.new 2001, 1, 4; end
      def hometown; '東京都'; end
      def twitter_id; '@okumura_nonoka'; end
      def introduction
        [
            "アイドルオタクの進化系。毎日がビッグバン。せーの！",
            " ＼どーん／",
            "#{hometown}出身の最年少#{age}歳。",
            "#{nickname}こと#{name}です。",
        ]
      end

      alias_method :to_s, :nickname
    end

    class KinoshitaHiyori
      include Singleton
      include Util

      def name; '木下 ひより'; end
      def nickname; 'ひよりん'; end
      def birthday; Date.new 1997, 12, 9; end
      def hometown; '東京都'; end
      def twitter_id; '@kinosita_hiyori'; end
      def introduction
        [
            "あなたのハートをチューニング。恋のスリーコードを奏でます。",
            "#{hometown}出身#{age}歳。",
            "#{name}です。#{nickname}って呼んでください。",
        ]
      end

      alias_method :to_s, :nickname
    end

    class SuyamaEmiri
      include Singleton
      include Util

      def name; '陶山 恵実里'; end
      def nickname; 'えみりぃ'; end
      def birthday; Date.new 1999, 5, 26; end
      def hometown; '東京都'; end
      def twitter_id; '@suyama_emiri'; end
      def introduction
        [
            "どこまでいってもマイペースなアイドルルーキー。あなたの新人王を狙います。",
            "#{hometown}出身の#{age}歳。",
            "#{nickname}こと#{name}です。",
        ]
      end

      alias_method :to_s, :nickname
    end

    class NakamuraAkari
      include Singleton
      include Util

      def name; '中村 朱里'; end
      def nickname; 'あかりん'; end
      def birthday; Date.new 1998, 1, 30; end
      def hometown; '千葉県'; end
      def twitter_id; '@nakamura_akari'; end
      def introduction
        [
            "＼りんりんりーんあかりんりーん／",
            "みーんなの笑顔の隣にいたい。",
            "#{hometown}出身の#{age}歳。",
            "#{nickname}こと#{name}です。",
        ]
      end

      alias_method :to_s, :nickname
    end

    class NishiNanami
      include Singleton
      include Util

      def name; '西 七海'; end
      def nickname; 'ななぴ'; end
      def birthday; Date.new 1996, 10, 9; end
      def hometown; '東京都'; end
      def twitter_id; '@nishi_nanami'; end
      def introduction
        [
            "わたしはあまーいチョコレート。あなたの熱気で溶けちゃうの。",
            "虹コン色黒担当、#{hometown}出身#{age}歳",
            "#{nickname}こと#{name}です。",
        ]
      end

      alias_method :to_s, :nickname
    end

    class NemotoNagi
      include Singleton
      include Util

      def name; '根本 凪'; end
      def nickname; 'ねも'; end
      def birthday; Date.new 1999, 3, 15; end
      def hometown; '茨城県'; end
      def twitter_id; '@nemoto_nagi'; end
      def pixiv_id; 'ID 11797412'; end
      def introduction
        [
            "みんなのハートを#{nickname}色に染めちゃってもよかっぺか？",
            "＼ぺー！／",
            "#{hometown}出身世間知らずの#{age}歳。",
            "#{nickname}こと#{name}です。",
        ]
      end

      alias_method :to_s, :nickname
    end

    class MatobaKarin
      include Singleton
      include Util

      def name; '的場 華鈴'; end
      def nickname; 'かりんさま'; end
      def birthday; Date.new 2000, 12, 30; end
      def hometown; '埼玉県'; end
      def twitter_id; '@matoba_karin'; end
      def introduction
        [
            "#{hometown}からやってきた最年少の#{age}歳。#{nickname}ってよんでもいいよ。",
            "＼#{nickname}ー！／",
            "ダンスと梅干しが大好きな#{name}です。",
        ]
      end

      alias_method :to_s, :nickname
    end

    class YoshimuraNana
      include Singleton
      include Util

      def name; '吉村 菜々'; end
      def nickname; 'なぁな'; end
      def birthday; Date.new 1999, 8, 2; end
      def hometown; '神奈川県'; end
      def twitter_id; '@yoshimura_nana'; end
      def introduction
        [
            "あの空に浮かぶ虹のように、みなさんになないろをお届けします。",
            "#{hometown}出身の#{age}歳。",
            "#{nickname}こと#{name}です。",
        ]
      end

      def to_s
        'ハム'
      end
    end
  end
end
