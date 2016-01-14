require 'masterman'

module Nizicon
  class Member
    include Masterman

    masterman do
      mount path: File.expand_path('../../../data/members.yml', __FILE__)
      attr_reader :id, :regular_member, :name, :position, :nickname, :birthday,
        :hometown, :twitter_id, :blog_uri, :head_shot_uri, :introduction, :pixiv_id, :graduation_date
    end

    def regular_member?
      regular_member
    end

    def age(current = Date.today)
      current.year - birthday.year - (current.yday < birthday.yday ? 1 : 0)
    end

    def introduction
      (@introduction || '').split("\n")
    end
  end
end
