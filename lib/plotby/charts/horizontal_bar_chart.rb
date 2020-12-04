module Plotby::Charts
  class HorizontalBarChart < BarChart
    def create_dataset(data)
      dataset = { x: [], y: [], type: chart_type }
      dataset.merge!(default_options)

      data.each do |d|
        dataset[:x].push(d[1])
        dataset[:y].push(d[0])
      end

      series = []
      series.push(dataset)
      series
    end

    def default_options
      { orientation: 'h' }
    end
  end
end
