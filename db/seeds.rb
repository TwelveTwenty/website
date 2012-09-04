# encoding: UTF-8

b = Blog.new
b.title = "Iterate, refine & polish"
b.body = <<-BLOG
<em>Like the development of any product, software development is hard. There are many reasons for this, but one big reason no team can ever deny is that you can't ever get a piece of software right at the first attempt.</em>

I've been passionately working as a programmer in my ten years since graduating college and I consider myself a craftsman of code. I love my work, or at least the coding part of it, and I love to bring projects to life that people want to use, enjoy and learn from. Most of my working hours of these years have gone into projects for the marketing business; projects with both limited budgets (though that's a relative term) and limited availability, with a single-serving purpose. The cyclic nature of the marketing business causes its products to hardly ever exceed the life span of around three months, simultaneously compressing the time a team has to develop.

While working hard to finish marketing projects on time, upon delivery there's always a feeling that the product isn't finished, or isn't finished properly. There's always something wrong with it, sometimes the design is off, at other times the way you envisioned it to work technically just doesn't work out, or it lacks a level of polish you're sure it would have had, given just a few more days or hours. Often when it's time to launch the product a sense of failure or under-accomplishment can come over me; yet another unpolished piece of work leaving the studio.

There have been times when I blamed the team, or parts of it, times when I blamed myself, or times when I blamed the entire marketing industry. But lately I've come to the conclusion that it's nothing but the lack of time to iterate, refine and polish a product, that's at the heart of it. It's nothing any one person in the business can or even should change, because it's not what that business is about.

Twelve Twenty is the place me and my like-minded colleagues have retreated to, escaping the single-serving development environment. This is the place where we can iterate, refine and polish as much as we deem necessary, with the hope people will want to use, enjoy and maybe sometimes learn from our apps.
BLOG
b.author = "Eric Paul"
b.artwork = "/assets/dummy/test-blog-header.jpg"
b.save


b = Blog.new
b.title = "The Five Hour Grid"
b.body = <<-BLOG
<em>My father recently turned 73 and he's a great source of practical wisdom. One of his oneliners I remember hearing many years ago already is that “any </em>good<em> party will last exactly five hours”. He means dinner parties that start at 7 o'clock in the evening, should last till midnight. Or receptions that open at four should be closed at nine. Even a visit to a club, should be over at five in the morning, if it starts around midnight. He repeated his five hour rule often enough for it to become somewhat of a meme in the family. Consequently I started paying attention to party planning and a few years later concluded that the rule makes more sense than I ever cared to admit.</em>

Five hours is just a nice block of time in which to get something done. Social meetings, sure, but also business meetings would regularly take up five hours of my time. Not just the meeting, but preparation, travel and evaluation. And I started planning my day in series of five hour segments. The morning stretches from 8:00 to 13:00, the afternoon from 13:00 to 18:00 and the evening from 18:00 to 23:00. The rest should be spent sleeping. With the five hour grid that this provides, daily planning can be greatly simplified. To add a level of granularity you can divide the five hour segments into two halves each. This very consciously limits your options in determining events to the minute.
<table>
<tbody>
<tr>
<td>Start of the day</td>
<td>8:00 to 10:30</td>
<td>Breakfast</td>
</tr>
<tr>
<td>End of the morning</td>
<td>10:30 to 13:00</td>
<td></td>
</tr>
<tr>
<td>Start of the afternoon</td>
<td>13:00 to 15:30</td>
<td>Lunch</td>
</tr>
<tr>
<td>End of the working day</td>
<td>15:30 to 18:00</td>
<td></td>
</tr>
<tr>
<td>Start of the evening</td>
<td>18:00 to 20:30</td>
<td>Dinner</td>
</tr>
<tr>
<td>End of the day</td>
<td>20:30 to 23:00</td>
<td></td>
</tr>
</tbody>
</table>
The center piece of our upcoming iPhone app <a href="/gettogether">GetTogether</a> is a week view of all your calendars. GetTogether hides early mornings and late nights and shows the rest of your schedule in the five hour grid. Of course events are shown to the minute, but in creating new events you're limited by design to stick to the grid segments. Although this might sounds awkward at first, it speeds up planning by a great deal, which leaves time for you to enjoy your day. Don't bother yourself with the exact times that “Launch party with Jankees and Timo” starts and ends, chances are you'll be talking to each other as the date draws closer. Just remember, any <em>good</em> party will last five hours!
BLOG
b.author = "Eric Paul"
b.artwork = "/assets/dummy/test-blog-header.jpg"
b.draft = false
b.save

b = Blog.new
b.title = "Color Coded Tokens"
b.body = <<-BLOG
<em><a href="/gettogether">GetTogether</a> is the fastest way to create calendar events on iOS. You decide what the event is about, who takes part in the event and when it takes place, all the rest are details you can decide later, for example by using your regular Apple Calendar app.</em>

With the entire app merely existing out of these three steps, we took our time to make them as smooth and pleasant as possible. For example, you might notice that the ‘tokens’ that appear when you select friends from your address book, contain a color coding. We don’t want the app to clutter with the names of your friends, so when you're done editing them, the app summarizes any number of friends into just one token. That token gets a checkered ribbon with the colors corresponding to your friend’s position in your list of contacts.

<a href="http://twelvetwenty.nl/blog/wp-content/uploads/2012/05/gt-token-series.png"><img class="alignnone size-full wp-image-71" title="gt-token-series" src="http://twelvetwenty.nl/blog/wp-content/uploads/2012/05/gt-token-series.png" alt="" /></a>

What we noticed after using the app for a while, is that it's not just a graphical addition to the app. When you have an iPhone for a couple of years, the number of contacts can easily become very high. Ranges of 500 to 1000 contacts are not exceptional. The color coding helps to get a sense of direction when scrolling through the long list of contacts.

We hope to use this feature for many apps to come, but first, let's put GetTogether in the App Store.
BLOG
b.draft = false
b.author = "Eric Paul"
b.save

b = Blog.new
b.title = "Physical dimensions on your computer screen"
b.artwork = "/assets/dummy/test-blog-header.jpg"
b.body = <<-BLOG
<em>For designers and design aficionados we made "Will it fit". An OSX app to review your designs for print or other media at their true physical size. You can check out the short video that tells you all about Will it fit <a href="http://www.twelvetwenty.nl/willitfit" target="_blank">on the product page</a>.</em>

At first we thought it would be a pretty simple and painless application to design and build. We ended up working on it for a couple of months. One thing to overcome was to determine the screen's PPI (pixels per inch) or pixel density. For this we need the <em><span style="color: #000000;">resolution</span></em> of the user's screen and the <em>physical </em><span style="color: #000000;"><em>size</em> of the display</span>. The physical size of any screen (e.g. 15,1 inches) is not a property we can detect or read somewhere, so we had to collect the data by hand. Most of the Apple displays are in our database by now, but for the screens that aren't, we had to make a calibration helper for the user determine the right physical dimensions.

<img class="alignnone size-full wp-image-52" title="02_willitfit" src="http://twelvetwenty.nl/blog/wp-content/uploads/2012/05/02_willitfit2.png" alt="" />

The user has to measure a line, to tell us how big their screen is. Next to it, we display a digital tape measure that changes its scale according to what you enter into the measure box. That way the user gets immediate feedback on whether he's entering the right dimensions.
BLOG
b.draft = false
b.author = "Timo Kuilder"
b.artwork = "/assets/dummy/test-blog-header.jpg"
b.save

g = Goody.new
g.draft = false
g.title = "Test goody"
g.author = "Timo danger"
g.artwork = "/assets/dummy/test-blog-header.jpg"
g.download_url = "twelvetwenty.nl/downloadurl"
g.teaser = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit."
g.body = <<-GOODY
<em>For designers and design aficionados we made "Will it fit". An OSX app to review your designs for print or other media at their true physical size. You can check out the short video that tells you all about Will it fit <a href="http://www.twelvetwenty.nl/willitfit" target="_blank">on the product page</a>.</em>

At first we thought it would be a pretty simple and painless application to design and build. We ended up working on it for a couple of months. One thing to overcome was to determine the screen's PPI (pixels per inch) or pixel density. For this we need the <em><span style="color: #000000;">resolution</span></em> of the user's screen and the <em>physical </em><span style="color: #000000;"><em>size</em> of the display</span>. The physical size of any screen (e.g. 15,1 inches) is not a property we can detect or read somewhere, so we had to collect the data by hand. Most of the Apple displays are in our database by now, but for the screens that aren't, we had to make a calibration helper for the user determine the right physical dimensions.

<img class="alignnone size-full wp-image-52" title="02_willitfit" src="http://twelvetwenty.nl/blog/wp-content/uploads/2012/05/02_willitfit2.png" alt="" />

The user has to measure a line, to tell us how big their screen is. Next to it, we display a digital tape measure that changes its scale according to what you enter into the measure box. That way the user gets immediate feedback on whether he's entering the right dimensions.
GOODY
g.save

g = Goody.new
g.draft = false
g.title = "Website open source"
g.author = "Jankees"
g.artwork = "/assets/dummy/test-blog-header.jpg"
g.download_url = "twelvetwenty.nl/downloadurl"
g.teaser = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit."
g.body = <<-GOODY
<em>For designers and design aficionados we made "Will it fit". An OSX app to review your designs for print or other media at their true physical size. You can check out the short video that tells you all about Will it fit <a href="http://www.twelvetwenty.nl/willitfit" target="_blank">on the product page</a>.</em>

At first we thought it would be a pretty simple and painless application to design and build. We ended up working on it for a couple of months. One thing to overcome was to determine the screen's PPI (pixels per inch) or pixel density. For this we need the <em><span style="color: #000000;">resolution</span></em> of the user's screen and the <em>physical </em><span style="color: #000000;"><em>size</em> of the display</span>. The physical size of any screen (e.g. 15,1 inches) is not a property we can detect or read somewhere, so we had to collect the data by hand. Most of the Apple displays are in our database by now, but for the screens that aren't, we had to make a calibration helper for the user determine the right physical dimensions.

<img class="alignnone size-full wp-image-52" title="02_willitfit" src="http://twelvetwenty.nl/blog/wp-content/uploads/2012/05/02_willitfit2.png" alt="" />

The user has to measure a line, to tell us how big their screen is. Next to it, we display a digital tape measure that changes its scale according to what you enter into the measure box. That way the user gets immediate feedback on whether he's entering the right dimensions.
GOODY
g.save
