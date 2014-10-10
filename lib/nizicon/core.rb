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
  end
end
