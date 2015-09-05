      updateVisibility: (svg, series) ->
        that = this
        for i in [0...series.length]
          that.handleVisibilty(svg, series[i], i)

      handleVisibilty: (svg, serie, index) ->
        svg.select('.content').selectAll('.series_' + index)
          .style('display', (s) ->
            if(serie.visible)
                return 'initial'
            else
                return 'none'
        )

        return serie.visible
