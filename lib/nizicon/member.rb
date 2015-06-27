module Nizicon
  class Member
    attr_accessor :id, :name, :position, :nickname, :birthday, :hometown, :twitter_id, :blog_uri, :head_shot_uri, :introduction, :pixiv_id

    def self.all
      Mapping.data['members'].map { |data| new(data) }
    end

    def self.find(id)
      if data = Mapping.data['members'].detect { |data| data['id'] == id }
        new(data.merge(id: id))
      end
    end

    def initialize(data = {})
      data.each { |key, value| public_send("#{key}=", value) }
      self.introduction = sprintf(@introduction, attributes) if @introduction
    end

    def age(current = Date.today)
      current.year - birthday.year - (current.yday < birthday.yday ? 1 : 0)
    end

    def introduction
      (@introduction || '').split("\n")
    end

    def attributes
      %i(
        id name position nickname birthday hometown introduction
        twitter_id blog_uri head_shot_uri pixiv_id age
      ).each_with_object({}) do |key, memo|
        memo[key] = public_send(key)
      end
    end
  end
end
