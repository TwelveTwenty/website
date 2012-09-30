###
main.js.coffee
###

class Main

	constructor: ->
		@addScrollListeners()
		@enableResposiveMenu()

		($ '.button-holder').mouseenter (e) =>
			($ e.currentTarget).find('.background-image-left').stop().animate
				backgroundPosition: "100% 0px"
				, 200

		($ '.button-holder').mouseleave (e) =>
			($ e.currentTarget).find('.background-image-left').stop().animate
				backgroundPosition: "0% 0"
				, 100

	addScrollListeners: ->
		@spacer = ($ 'body > header .spacer')
		($ document).bind "touchmove", debounce(@handleScroll, 200, false)
		($ window).scroll debounce(@handleScroll, 100, false)
		@handleScroll()

	enableResposiveMenu: ->
		@list = ($ '.main-menu')
		@header = @list.closest('header')

		($ '#toggle-button').click =>
			if @header.hasClass "open"
				# now close
				@list.css('height', '0px')
				@header.removeClass('open')
				@header.addClass('closed')
			else
				# now open
				height = @list.find('li:first').outerHeight() * @list.find('li').length
				@list.css('height', height - 10 + 'px')
				@header.removeClass('closed')
				@header.addClass('open')

	handleScroll: =>
		pos = ($ window).scrollTop()
		c = ($ "#logo")
		delta = Math.max(160 - pos, 0)
		if delta is 0
			@spacer.addClass('show')
		else
			@spacer.removeClass('show')


($ document).ready -> new Main()

$(window).bind 'page:change', ->
	_gaq.push ['_trackPageview']
	window.scrollTo(0, 0)
	""