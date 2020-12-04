module Plotby::Charts
  class BaseChart
    def chart_type; end

    def create_dataset(data)
      dataset = { x: [], y: [], type: chart_type }
      dataset.merge!(default_options)

      data = data.to_a if data.is_a?(Hash)

      data.each do |d|
        dataset[:x].push(d[0])
        dataset[:y].push(d[1])
      end

      series = []
      series.push(dataset)
      series
    end

    def default_options
      {}
    end
  end
end
