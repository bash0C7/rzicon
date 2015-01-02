require 'yaml'

module Nizicon
  module Mapping
    DATA_PATH = File.join(File.dirname(__FILE__), '../../data/2zicon.yml')

    def self.data
      @data ||= YAML.load_file(DATA_PATH).freeze
    end
  end
end
