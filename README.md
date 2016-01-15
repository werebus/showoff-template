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
$ bundle exec showoff serve
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
the cli, you just need to create an app and push

```bash
$ heroku create
$ git push heroku
```

[showoff]: https://github.com/puppetlabs/showoff
[gh-pages]: https://pages.github.com/
[heroku]: http://heroku.com/
