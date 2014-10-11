module Nizicon
  require "singleton"

  # generic methods
  class Core
    include Singleton

    def name
      '虹のコンキスタドール'
    end

    def from
      'つくドル！プロジェクト'
    end

    def members
      Members.instance
    end

    def twitter_id
      '@2zicon'
    end

    def blog_uri
      URI.parse("http://ameblo.jp/2zicon/")
    end

    def website_uri
      URI.parse("http://pixiv-pro.com/2zicon/")
    end

    def showroom_uri
      URI.parse("https://www.showroom-live.com/2zicon")
    end
  end
end
