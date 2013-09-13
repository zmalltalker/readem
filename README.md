# An amazing tool renders readmes in realtime

Assuming I have all my projects in the ~/Projects directory, we can
start a web server on port 4567 which renders a list of projects which have a README.

When I want to serve up all my readmes, I enter this at the terminal:

   gem install readem
   readem

Then my browser will automagically open the URL http://localhost:1337/
and view a list of links to projects.

When I click one of the links, the readme for that repository is
displayed. Then it reloads the readme every 3 seconds after I stop
editing, so I can view my changes in "realtime".

## Implementation notes

Rendering markdown: use the Makeup gem.






























## Implementation notes

### Directories with readmes
require "pathname"
readmes = Pathname.glob("/home/marius/Projects/*/README.md")
readme_dirs = readmes.map(&:dirname)
local_dirnames = readme_dirs.map(&:dirname)

### Mark up Markdown

There's this thing called Makeup. How does it work? Use the
[README](http://gitorious.org/gitorious/makeup), stupid.

require "makeup/markup"
first_readme = readmes.first
first_readme = Makeup::Markup.new.render(first_readme.basename.to_s, first_readme.read)

- Sinatra
- List each readme
- get /project-name: render readme


### Bootstrap boilerplate
<!DOCTYPE html>
<html>
    <head>
      <link rel="stylesheet" href="http://netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" />
      <title>Zomg</title>
    </head>
    <body>
      <div class="container">
        <h1>Amazing</h1>
        <code>Oh</code>
      </div>
    </body>
</html>
