module Nizicon
  module Core
    def name
      data['name']
    end

    def from
      data['from']
    end

    def twitter_id
      data['twitter_id']
    end

    def blog_uri
      data['blog_uri']
    end

    def website_uri
      data['website_uri']
    end

    def showroom_uri
      data['showroom_uri']
    end

    def members
      Nizicon::Member.all
    end

    private

    def data
      @data ||= Mapping.data['core']
    end
  end
end
