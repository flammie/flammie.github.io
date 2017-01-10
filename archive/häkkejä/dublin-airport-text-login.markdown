---
layout: default
title: logging in to a javascript captive portal without a graphical browser
---
# Logging in to a captive portal of javascript without a browser

It so happens that I'm at Dublin airport at the moment without a working
internet browser and need to use internet. So how does one login to a
captive portal then. I would've had lynx and links for most occasions,
however, the login button on the front page is javascripted, so no go.
What to do then, is, of course I can emulate the javascript here since
it was easy. See:

    $ wget http://www.example.com
    302 Found
    Location: https://login.wlan.eircom.net/sd/init?scheme=http&host=www.example.com&path=%2f [following]
    --2015-05-06 08:33:07--  https://login.wlan.eircom.net/sd/init?scheme=http&host=www.hs.fi&path=%2f


etc. Now we have the login page source code to see what goes, on, specifically,
this:

			<form id="tscstemp" action="/sd/login" method="post">
				<input type="hidden" name="username" value="guest@scstemp"/>
				<input type="hidden" name="password" value="trialpass"/>				
			<a onclick="$('#tscstemp').submit()" class="btn test">
				
					<img src="img/phone/continue.png"/>
				
			</a>
			</form>

At this point, it's easy to formulate what to do, I just used wget to formulate
the necessary GET call like so:

    $ wget 'https://login.wlan.eircom.net/sd/login?username=guest@scstemp&password=trialpass'

presto. Did not need further doings, mission accomplished.

