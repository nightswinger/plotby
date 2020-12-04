module Plotby::Charts
  class ScatterChart < BaseChart
    def chart_type
      'scatter'
    end

    def default_options
      { mode: 'markers' }
    end
  end
end
