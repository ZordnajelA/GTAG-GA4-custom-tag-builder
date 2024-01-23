
# GTAG/GA4 custom tag builder

Provide additional customization options to Google Tag's own native template


## Why build this?
There are some limitations with the GA4 official tags in Google Tag Manager like:

- When you create a tag for an event the parameters need to be assigned manually on the tag. If you have 100s of events with different configurations and parameters, you need to create one tag for each one of them.

- There is also no automated way to pull all event data directly from the dataLayer

- No easy way to add GA4 recommended events to our setup


## Features

- Configure everything from the same template, pageviews, recommended events, custom events and config tag.

- Pull data from the dataLayer with a simple checkbox, all the keys of the current push() will be automatically read by GTAG and passed as event parameters

- Create both custom and GA4 recommended events

- If the recommended selected event is an ecommerce one,you are able to include an items object

- All listed recommended events will include a list of recommended parameters according to Google’s documentation

- If a custom event is selected, then the event can pull its name from either the dataLayer or a custom given name in the tag

- Send common data to multiple events by using GTM the built-in Google Tag: Event Settings variable

- You can customize from where you are loading GTAG and to which endpoint send the events (your GTM server for example)

- Customize everything you ever wanted about your events

