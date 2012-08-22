class Logo
	constructor: ->

		@logo = ($ "img[src='/assets/logo-white.png']:first")

		if @logo.length is 0
			@logo = ($ "img[src='/assets/logo.png']:first")
			@black = true

		@logo.load => @imageLoaded() if @logo.length > 0

	imageLoaded: ->
		width = @logo.outerWidth('width')
		height = @logo.outerHeight('height')

		@canvas = ($ "<canvas width='#{width}' height='#{height}' class='logo block'></canvas>").insertBefore(@logo)
		@logo.remove()

		@stage = new Stage @canvas.get(0)


		if @black
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