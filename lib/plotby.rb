require "plotby/railtie"
require "plotby/helper"

if defined?(ActiveSupport.on_load)
  ActiveSupport.on_load(:action_view) do
    include Plotby::Helper
  end
end

module Plotby
  # Your code goes here...
end
