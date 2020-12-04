module Plotby::Charts
  class PieChart < BaseChart
    def chart_type
      'pie'
    end

    def create_dataset(data)
      dataset = { labels: [], values: [], type: chart_type }
      data.each do |d|
        dataset[:labels].push(d[0])
        dataset[:values].push(d[1])
      end

      series = []
      series.push(dataset)
      series
    end
  end
end
