# automate-chrome
== Setup machine for test==

1. Install RVM stable with ruby:
```
http://rvm.io/ (version ruby-2.4.1)
```

2. Install gems bundler
``` 
$ gem install bundler
``` 

3. Git clone Repo of Automate

4. Remove file '''Gemfile.lock''' on your project

5. Bundle install

``` 
$ cd PATH of Repo on your machine /automate-chrome/automate
$ bundle install
```


6. Check have file '''Gemfile.lock''' on your project

== Check Chromedriver for run web-automate on chrome (Selenium 3.14.0)==

## How to run automate
``` 
$ cd PATH of Repo on your machine /automate-chrome/automate
$ cucumber features/task.feature
```
