###
main.js.coffee
###

class Main
	constructor: ->
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
				@list.css('height', height + 20 + 'px')
				@header.removeClass('closed')
				@header.addClass('open')

	($ document).ready -> new Main()