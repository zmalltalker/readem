# README browser

This is where we do our work

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
