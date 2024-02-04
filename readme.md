
# GTAG/GA4 custom tag builder

Provide additional customization options to Google Tag's own native template.

The template has taken inspiration from these two:
- [gtm-improved-ga4](https://github.com/WebMechanix/gtm-improved-ga4)
- [dataLayer picker](https://github.com/gtm-templates-simo-ahava/data-layer-picker)


## Why build this?
There are some limitations with the GA4 official tags in Google Tag Manager like:

- When you create a tag for an event the parameters need to be assigned manually on the tag. If you have 100s of events with different configurations and parameters, you need to create one tag for each one of them.

- There is also no automated way to pull all event data directly from the dataLayer

- No easy way to add GA4 recommended events to our setup


## Features

- Configure everything from the same template, pageviews, recommended events, custom events and config tag.

![image](https://github.com/ZordnajelA/GTAG-GA4-custom-tag-builder/assets/53868959/4573339a-4c7b-4c11-a387-4b4bb2757e2d)

---

- Pull data from the dataLayer with a simple checkbox, all the keys of the current push() will be automatically read by GTAG and passed as event parameters

![image](https://github.com/ZordnajelA/GTAG-GA4-custom-tag-builder/assets/53868959/67f9e369-2bba-4e15-a502-a7713ead12df)

---

- Create both custom and GA4 recommended events
  
![image](https://github.com/ZordnajelA/GTAG-GA4-custom-tag-builder/assets/53868959/3da4aada-7734-4af6-b172-3e7df80ea8ba)

---

- If the recommended selected event is an ecommerce one, you are able to include an items object

![image](https://github.com/ZordnajelA/GTAG-GA4-custom-tag-builder/assets/53868959/f261bea0-57d2-4098-8360-1784c0dfddea)

---

- All listed recommended events will include a list of recommended parameters according to Google’s documentation

![image](https://github.com/ZordnajelA/GTAG-GA4-custom-tag-builder/assets/53868959/ddd69657-6973-430b-a8c0-11af4d9996d7)

---

- If a custom event is selected, then the event can pull its name from either the dataLayer or a custom given name in the tag

![image](https://github.com/ZordnajelA/GTAG-GA4-custom-tag-builder/assets/53868959/3dcac1cf-e72f-4e94-90a2-6f2a00fa51f0)

---

- Send common data to multiple events by using GTM the built-in Google Tag: Event Settings variable

![image](https://github.com/ZordnajelA/GTAG-GA4-custom-tag-builder/assets/53868959/95d55aaf-1a2a-4d3b-ba20-1f6ef5b6f5e6)

---

- You can customize from where you are loading GTAG and to which endpoint send the events (your GTM server for example)

![image](https://github.com/ZordnajelA/GTAG-GA4-custom-tag-builder/assets/53868959/6165922a-239c-4d44-a214-ddf8e3c02438)

---

- Customize everything you ever wanted about your events

