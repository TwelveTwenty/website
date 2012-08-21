###
main.js.coffee
###

class Main

	constructor: ->
		@addScrollListeners()
		@enableResposiveMenu()

	addScrollListeners: ->
		@spacer = ($ 'body > header .spacer')
		($ document).bind "touchmove", => @handleScroll()
		($ window).scroll => @handleScroll()
		@handleScroll()

	enableResposiveMenu: ->
		@list = ($ '.main-menu')
		@header = @list.closest('header')

		@header.addClass('closed')

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

	handleScroll: ->
		pos = ($ window).scrollTop()
		c = ($ "#logo")
		delta = Math.max(200 - pos, 0)
		if delta is 0
			@spacer.addClass('show')
		else
			@spacer.removeClass('show')


($ document).ready -> new Main()