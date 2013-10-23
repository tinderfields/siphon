require "bundler/setup"



require "siphon/version"
require "siphon/base"
require "siphon/adapter"

module Siphon
  # Your code goes here...

  def siphon(args)
    @siphon = Siphon::Base.new(args)
  end

end

ActiveSupport.on_load :action_controller do
  include Siphon
end