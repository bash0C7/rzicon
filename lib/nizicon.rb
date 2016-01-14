require 'forwardable'
require 'masterman'
require 'nizicon/member'
require 'nizicon/version'

module Nizicon
  class << self
    extend Forwardable
    delegate %i(name from twitter_id blog_uri website_uri showroom_uri) => :core

    def members
      Nizicon::Member.all
    end

    private

    def core
      Core
    end
  end

  class Core
    include Masterman

    masterman do
      class_mount path: File.expand_path('../../data/core.yml', __FILE__), cache: true
      cattr_reader :id, :name, :from, :twitter_id, :blog_uri, :website_uri, :showroom_uri
      mount_class_attributes!
    end
  end

  private_constant :Core
end
