// pay with a tweet library

window.twttr = (function (d, s, id) {
	var t, js, fjs = d.getElementsByTagName(s)[0];
	if (d.getElementById(id)) return;
	js = d.createElement(s);
	js.id = id;
	js.src = "//platform.twitter.com/widgets.js";
	fjs.parentNode.insertBefore(js, fjs);
	return window.twttr || (t = { _e:[], ready:function (f) {
		t._e.push(f)
	} });
}(document, "script", "twitter-wjs"));

twttr.ready(function (twttr) {
	twttr.events.bind('tweet', function (event) {
		if (DOWNLOAD_URL) {
			window.location = DOWNLOAD_URL;
		} else {
			console.log("Sorry, no DOWNLOAD_URL found in document.");
		}
	});
});