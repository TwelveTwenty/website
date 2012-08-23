class Logo
	constructor: ->
		@logo = ($ "[data-animate='logo']")
		@color = @logo.data('color')
		@canvas = ($ "<canvas class='logo block'></canvas>").insertBefore(@logo)
		@logo.load => @imageLoaded() if @logo.length > 0
		@logo.hide()


	imageLoaded: ->
		width = @logo.outerWidth()
		height = @logo.outerHeight()

		@canvas.attr('width',width)
		@canvas.attr('height',height)



		@stage = new Stage @canvas.get(0)

		if @color is 'black'
			url = "/assets/animations/logo-animatie-zwart-helft.json"
		else
			url = "/assets/animations/logo-animatie-wit-helft.json"

		$.ajax
			url: url,
			dataType: 'json',
			success: @jsonLoaded

	jsonLoaded: (data) =>
		Ticker.setFPS 30
		Ticker.addListener @stage

		@spriteSheet = new SpriteSheet data

		@logoAnimation = new BitmapAnimation @spriteSheet
		@logoAnimation.x = @width
		@stage.addChild @logoAnimation

		@logoAnimation.onAnimationEnd = =>
			@logoAnimation.gotoAndStop(50)
			Ticker.setFPS 0
			Ticker.setPaused(true)

		@logoAnimation.play()

		@canvas.mouseenter (e) =>
			@logoAnimation.play()


($ document).ready -> new Logo()