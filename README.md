Presentation Template
=====================
This repository contains a blank [showoff][showoff] presentation to use as a
template.

Instalation
-----------
*  Clone this repository: `git clone https://github.com/this/repo`
*  Create a new reposiory on Github for your presentation
*  Update your clone to use your newly created repo: `git remote set-url
   origin your_push_url`
*  `bundle install`

Adding slides
-------------
Add a slide like so:

```bash
$ bundle exec showoff add -d directory_name -n slide_name
```

Adding a new section (`directory_name`) will also modify `showoff.json`

Running your presentation
-------------------------
This presentation can be run as follows:

```bash
$ bundle exec showoff serve
```

[showoff]: https://github.com/puppetlabs/showoff
