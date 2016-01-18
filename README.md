Presentation Template
=====================
This repository contains a blank [showoff][showoff] presentation to use as a
template.

Installation
-----------
*  Clone this repository:
   `git clone https://github.com/werebus/showoff-template`
*  Create a new repository on GitHub for your presentation
*  Update your clone to use your newly created repo:
   `git remote set-url origin your_push_url`
*  `bundle install`

Adding slides
-------------
Add a slide like so:

```bash
$ bundle exec showoff add --dir directory_name --name slide_name
```

Adding a new section (`directory_name`) will also modify `showoff.json`,
but probably in an undesirable way. Probably best to 
`git checkout -- showoff.json` and then add the new section to
`showoff.json` yourself.

Running your presentation
-------------------------
This presentation can be run as follows:

```bash
$ bundle exec rackup
```

Publishing on GitHub
--------------------
Since your presentation is in a GitHub presentation already, it's pretty
easy to publish a static version to [gh-pages][gh-pages].

```bash
$ bundle exec showoff github
$ git push origin gh-pages
```

Running on Heroku
-----------------
Assuming that you have a [heroku][heroku] account and are logged-in to
the cli, you just need to create an app and push.

```bash
$ heroku create
$ git push heroku
```

Password-protected presenter view
---------------------------------
If you'd like to put a password in front of the presenter view, just
sent the environment variable, `PASSWORD`. On Heroku, that's done like
so:

```bash
$ heroku config:set PASSWORD=somepassword
```

but any method of setting an environment variable will do the trick.
Locally, that can be as simple as

```bash
$ PASSWORD=somepassword bundle exec rackup
```

Note that this is HTTP basic authentication, and likely not over SSL, so it's
not true security. It will probably keep your audience from screwing
with you, though.

[showoff]: https://github.com/puppetlabs/showoff
[gh-pages]: https://pages.github.com/
[heroku]: http://heroku.com/
