window.center_vertically = ->
	$('.center-vertically').each ->
		if ($(this).hasClass 'not-vertical-small') && (convertRem(40) > $(window).width())
			margin_top = ''
		else
			margin_top = ($(this).closest('.god').height() - $(this).height()) / 2
			margin_top = margin_top + 'px'
		$(this).css
			'margin-top' : margin_top
			'visibility' : 'visible'				

window.detect_window_change = ->
		$(window).on 'resizeEnd orientationchange', ->
			center_vertically();
			window_size_changed();

		window.onresize = ->
			if this.resizeTo
				clearTimeout(this.resizeTo)
			this.resizeTo = setTimeout ->
				$(this).trigger('resizeEnd')
			,500
			return true
		return true

window.getRootElementFontSize = ->
	parseFloat(
		getComputedStyle(
			document.documentElement
		).fontSize
	)

window.convertRem = (value) ->
	value * getRootElementFontSize();