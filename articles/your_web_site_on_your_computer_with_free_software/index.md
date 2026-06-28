---
title: 'Your web site, on your computer, with Free Software'
authors: 'Tony Mobily'
published: '2015-06-10 10:00:00'
tags: 'free-software,web-sites,self-hosting,wordpress,publii'
layout: article
main_image: hero.svg
license: verbatim_only
section: hacking
listed: 'true'
---
A friend recently asked me to create [Secure Vehicle Storage](https://www.securevehiclestorage.com.au/), and it reminded me that somewhere along the way, people were convinced that having a web site means paying somebody forever.

You pay for the builder. You pay for the template. You pay for the hosting. You pay extra for the form. You pay extra so that the page is not ugly. You pay extra so that the site does not have a giant advertisement for the company that let you build it. You pay, and pay, and pay.

The odd thing is that, thanks to Free Software, this does not need to be true at all.

<!--break-->

I am not saying that every person in the world should run their own web server from a cupboard, connected to the cheapest Internet plan available. I am also not saying that hosting companies are evil, or useless, or unnecessary. A good hosting company can be fantastic.

What I am saying is much simpler: today, a normal person can create a perfectly decent web site, even visually, with Free Software; and that same person can serve it from a normal computer, at home or in a small office, without renting space from anybody.

That is quite amazing. And, for some reason, people tend to forget it.

# The web site problem became weird

There was a time when making a web site was a mysterious act. Somebody who knew HTML would sit in front of a text editor, write strange incantations inside angle brackets, upload the result somewhere, and there it was: a web page.

Then things became easier. Then they became harder again.

Today, if you ask people how to make a web site, the answer often comes wrapped in a sales funnel. Use this hosted builder. Use that proprietary platform. Enter your credit card. Choose a plan. Upgrade because the plan you picked does not have something as basic as a contact form. Upgrade again because you would like to remove their logo. Upgrade again because you would like to have more than three pages.

This is madness.

Yes, web sites can be complicated. If you are building the next YouTube, you have a problem. If you are building a stock trading platform, please don't take your architectural advice from a short opinion article. If you are building a complex booking system with payments, staff rosters, SMS reminders, customer management, accounting integrations and the whole lot, then yes, you need to think carefully.

But most people do not need that. Most people need pages. Text. Pictures. A form. A map. A price list. A few articles. A simple way to update things.

For that, Free Software is not just good enough. It is often better.

# The visual road

The first objection is always the same: "But I don't know how to code".

Fair enough. Most people don't. Most people also don't know how to rebuild an engine, and yet they can drive a car. The point of good software is not to make every user a programmer. The point is to make power available without demanding that every user learn every layer underneath.

There are several Free Software ways to build a site visually, or almost visually.

[Publii](https://getpublii.com/) is a good example. It runs on your own computer. You write pages and posts in a friendly interface. It generates a static web site. Static, in this context, is not an insult. Static means that the result is a pile of plain files: HTML, CSS, images, JavaScript. In other words, the kind of thing a web server can serve very, very quickly.

There is [Silex](https://www.silex.me/), which is closer to the visual web builder idea: place things on a page, edit them, publish the result. There is [WordPress](https://wordpress.org/), which is huge, sometimes annoying, but still Free Software, and still very capable when you need pages, posts, themes and plugins. There are desktop tools, static site generators, small CMS systems, and plain old HTML editors.

You do not need a CRM. You do not need an "enterprise digital experience platform". You do not need a sales consultant to say "omnichannel" at you. You need a tool that lets you make a few pages and publish them.

That is the first liberating step: realise that the web site itself can be simple.

# The boring road

I have a particular soft spot for boring solutions.

Boring is good. Boring means that when something breaks, you know where to look. Boring means that the person who helps you five years from now will not need to reverse engineer a proprietary platform that has changed names twice.

A static web site is beautifully boring.

You write pages. You generate files. You put those files somewhere a web server can see them. Done.

This is not a step backwards. A static site is often faster, safer and cheaper than a dynamic one. There is no database to break. There is no admin login page being attacked by every bot on the planet. There are no plugins waiting for an update that you forgot to apply.

For a small business, a personal site, a community group, a campaign page, or a local service, this is often exactly what is needed. A real business web site does not become more "professional" because it has a huge back end. It becomes professional when it says clearly what the business does, loads quickly, works on a phone, and lets people contact you.

This applies whether the site is a magazine, a local service, or a practical business site. The point is not to worship complexity. The point is to publish useful information and make it easy for people to act on it.

# Putting it on your own computer

This is where things become interesting.

Once you have a pile of static files, serving them is almost embarrassingly simple. A small GNU/Linux computer can do it. An old laptop can do it. A tiny fanless box can do it. A Raspberry Pi-like device can do it, if you happen to have one around and you are not trying to serve the whole planet.

You need a web server. [Caddy](https://caddyserver.com/) is very friendly and can handle HTTPS certificates automatically. Apache and nginx are older, famous, extremely capable options. Pick one. For a small static site, they will all be bored most of the time.

You need your computer to be reachable from the Internet. This is normally the part where people get scared, and sometimes they should: the Internet is not a friendly little village. However, the basics are not mysterious.

You need:

* A computer that stays on
* A web server
* Your router forwarding web traffic to that computer
* A domain name pointing to your Internet connection
* HTTPS
* Backups
* Security updates

That is it. Really.

If your Internet provider gives you a static IP address, life is easier. If it doesn't, dynamic DNS can help. If your Internet provider uses CGNAT, or blocks inbound ports, then serving from home may become painful or impossible without extra tricks. This is not Free Software's fault; this is the modern Internet being shaped around customers who are expected to consume, not publish.

And this is exactly why the idea matters.

# A tiny recipe

If somebody asked me for the simplest path, I would not start with Kubernetes, containers, orchestration, a database cluster and a monitoring dashboard that needs its own monitoring dashboard.

I would start with this:

1. Install Publii or Silex on your computer.
2. Make a small site: home, about, services, contact.
3. Export or publish the static files.
4. Install GNU/Linux on a small computer.
5. Install Caddy.
6. Put the site files where Caddy can serve them.
7. Point your domain name to your Internet connection.
8. Keep a copy of the whole site somewhere else.

That is not a toy. That is a real web site.

Will it handle a million visitors a day? Probably not, and that is fine. Most web sites do not need to handle a million visitors a day. If you suddenly get that kind of traffic, congratulations: you now have a much nicer problem.

For a normal site, the little computer will sit there quietly, doing its job, serving pages with almost no effort.

[[textbox:Do not skip backups]]
The web server is not the original copy of your life. Keep the site source somewhere else too: another computer, an external disk, a Free Software-friendly git forge, or all of the above. The cheaper the hosting setup, the more disciplined your backup habits should be.
[[/textbox]]

# The catches

There are catches. There are always catches.

Your power can go out. Your Internet connection can go out. Your upload speed may be terrible. Your router may be awful. Your provider may not let you receive web traffic. You need to apply security updates. If you run WordPress or any other dynamic system, you need to care about updates even more.

This is why I like static sites so much for simple cases. They reduce the number of moving parts. They do not remove responsibility, but they make responsibility manageable.

If you are not willing to update the machine, check backups, and understand at least a little about your router, then pay for good hosting. There is no shame in that. Freedom includes the freedom to delegate.

But there is a huge difference between choosing hosting because it is useful, and believing that hosting is a natural law of the universe.

It isn't.

# Why this matters

This is not really about saving ten dollars a month.

Yes, saving money is nice. I like saving money as much as the next person. But the important part is control.

When you build your site with Free Software, you are not trapped in somebody else's editor. When you serve plain files, you are not trapped in somebody else's database. When you understand the basic publishing path, you are no longer at the mercy of a company that can decide that the feature you used yesterday is now part of a premium plan.

You also learn something.

This is the part that proprietary platforms quietly remove from the world. They make things convenient, and sometimes they are genuinely convenient. But they also turn publishing into renting. You rent the editor, rent the hosting, rent the template, rent the form, rent the analytics, rent the connection between all of them.

Free Software says: here are the pieces. Use them. Change them. Move them. Put them on your own machine if you want. Pay somebody to help you if you want. Pay for hosting if it makes sense. But do not confuse convenience with ownership.

# The web is still ours

The web was meant to be publishable by normal people.

Not just by companies with venture capital. Not just by people who can afford a monthly subscription for every tiny function. Not just by platforms that show you a friendly editor and then keep the keys.

Today, with Free Software, you can make a site visually. You can make it simply. You can make it static. You can put it on a computer you own. You can point a domain at it. You can serve it to the world.

Maybe you won't. Maybe you will decide that paying a hosting company is easier, and that will be the right decision for you.

But the fact that you have the choice is everything.

That choice exists because of Free Software. And, as usual, the surprising thing is not that Free Software can do it.

The surprising thing is that so few people know that it can.
