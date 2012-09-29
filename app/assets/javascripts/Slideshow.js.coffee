###
Slideshow
###
class Slideshow
	constructor: (@el) ->
		@image_container_list = @el.find('.photo-container ol')
		@controller_list_items = @el.find('.controls ol li')

		if @image_container_list.find('li').length < 2
			@el.find('.controls').hide()
			@showNext()
			return
		else
			@interval = setInterval (=> @showNext()), 5000
			@el.find('.photo-container').on 'click', @handleContainerClick

		i = 0
		for photo in @image_container_list.find('li')
			photo_in_li = ($ photo)
			current_controller_list_item = ($ @controller_list_items[i])

			# add identifier to photo and controller list item
			photo_in_li.attr('data-photonumber', i)
			current_controller_list_item.attr('data-photonumber', i)

			# add listener to controller list item
			current_controller_list_item.on 'click', @handleControlListItemClick

			i++

		@showNext()

	handleContainerClick: =>
		clearInterval(@interval)
		@showNext()

	handleControlListItemClick: (e) =>
		clearInterval(@interval)
		current_number = ($ e.currentTarget).data('photonumber')
		@showNext(current_number)

	showNext: (current = -1) ->
		# get current
		active = if @el.find('.photo-container .active').length isnt 0 then @el.find('.photo-container .active') else @el.find('.photo-container li:last')

		#get next image
		if current is -1
			if active.next().length > 0 then next = active.next() else next = @el.find('.photo-container li:first')
		else
			next = @el.find(".photo-container [data-photonumber='#{current}']")

		active.removeClass('active')
		next.addClass('active')

		active.hide()
		next.fadeIn(300)

		# remove current from all control li's
		($ li).removeClass('current') for li in @controller_list_items

		# what's the current number
		currentNumber = next.data('photonumber')

		# find the current li with the right number
		@el.find(".controls li[data-photonumber='#{currentNumber}']").addClass('current')

		@image_container_list.css('height', @max_height + 'px')

window.searchForSlideShows = =>
	($ '.slideshow').each (iterator, element) => new Slideshow(($ element))

($ document).ready -> window.searchForSlideShows()
$(window).bind 'page:change', -> window.searchForSlideShows()