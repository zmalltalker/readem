# An amazing tool renders readmes in realtime

Assuming I have all my projects in the ~/Projects directory, we can
start a web server on port 1337 which renders a list of projects which have a README.

When I want to serve up all my readmes, I enter this at the terminal:

```
gem install readem
readem
```

Then my browser will automagically open the URL http://localhost:1337/
and view a list of links to projects.

When I click one of the links, the readme for that repository is
displayed.

## Not yet true

Then it reloads the readme every 3 seconds after I stop
editing, so I can view my changes in "realtime".
