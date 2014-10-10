require "nizicon/version"
require "nizicon/core"
require "nizicon/members"

module Nizicon
  def self.core
    Nizicon::Core.instance
  end
end

module Nizicon
  def self.method_missing(name, *args, &block)
    Nizicon.core.send(name, *args, &block)
  end

  def self.name
    Nizicon.core.name
  end

  def self.to_s
    Nizicon.core.name
  end
end
