if ($('body').hasClass('apps-show-gettogether')) {


	var casualsIndex = 0;

	var casuals = [
		'walking down the street',
		'in the supermarket',
		'sitting at the bar',
		'working at the office',
		'dancing at the club',
		'enjoying the beach'
	];

	var friendsIndex = 0;
	var friends = [
		'an old friend',
		'a colleague',
		'a relative',
		'your neighbour'
	];

	var heshesIndex = 0;
	var heshes = [
		'she',
		'he'
	];

	var actionsIndex = 0;
	var actions = [
		'for a few drinks',
		'and grab a beer',
		'for some brainstorming',
		'and have lunch',
		'to go see a movie',
		'for a bowling night',
		'to talk some more'
	];

	function any(listName) {
		var list = eval(listName);
		var listIndex = eval(listName + "Index");
		listIndex = (listIndex + 1) % list.length;
		eval(listName + "Index = " + listIndex + ";");

		return list[listIndex];
	}

	var swapOrder = ['casuals', 'friends', 'heshes', 'actions'];
	var swapIndex = 0;

	window.swapSentence = function (id, speed) {
		var fadeSpeed = 500;

		$("." + id).fadeTo(fadeSpeed, 0).delay(10).fadeTo(fadeSpeed, 1)
		setTimeout(function () {
			var word = any(id);
			$("." + id).html(word);
		}, fadeSpeed);

		swapIndex = (swapIndex + 1) % swapOrder.length;
		nextId = swapOrder[swapIndex];

		setTimeout(function () {
			swapSentence(nextId, speed)
		}, speed);

	}

	setTimeout(function () {
		swapSentence(swapOrder[swapIndex], 2000);
	}, 100);
}