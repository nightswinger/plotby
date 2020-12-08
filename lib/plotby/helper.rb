require_relative 'charts'

module Plotby
  module Helper
    def line_chart(data_source, **options)
      chart = Plotby::Charts::LineChart.new
      draw_chart(chart.create_dataset(data_source), options)
    end

    private

    def draw_chart(data, layout)
      @chart_id ||= 0
      element_id = "chart-#{@chart_id += 1}"
      html = "<div id=\"#{element_id}\"></div>"
      js = <<JS
<script>
var chart = document.getElementById('#{element_id}');
Plotly.newPlot(chart, #{data.to_json}, #{layout.to_json});
</script>
JS
      html += js
      html.respond_to?(:html_safe) ? html.html_safe : html
    end
  end
end
