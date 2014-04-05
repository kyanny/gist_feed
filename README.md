GistFeed
========

Generate RSS feed for your gists.

Setup for Heroku
================

You need Heroku account.

1. Create new GitHub access token and write down it
---------------------------------------------------

https://github.com/settings/tokens/new

Make sure your access token has `gist` scope.

2. Clone this repository
------------------------

```
$ git clone https://github.com/kyanny/gistfeed.git
```

3. Create new Heroku application and deploy this application code
-----------------------------------------------------------------

```
$ heroku apps:create
$ git push heroku master
```

4. Setup GitHub access token and basic auth credentials to Heroku application
-----------------------------------------------------------------------------

```
$ heroku config:set OCTOKIT_ACCESS_TOKEN=XXXXXXXXXXXXXXXX
$ heroku config:set BASIC_AUTH_USER=XXXX
$ heroku config:set BASIC_AUTH_PASSWORD=XXXX
```

Notes
=====

Due to Heroku's timeout, Generated RSS feed has only 10 items.
