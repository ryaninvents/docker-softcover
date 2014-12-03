#baconscript/softcover

A Docker image for generating e-books using [Softcover](https://www.softcover.io/)'s software. Installs all the dependencies in an image so you don't have to.

Current status:
```
$ softcover check
Checking Softcover dependencies...
Checking for LaTeX...         Found
Checking for ImageMagick...   Found
Checking for Node.js...       Found
Checking for PhantomJS...     Missing
Checking for Inkscape...      Found
Checking for Calibre...       Found
Checking for KindleGen...     Missing
Checking for Java...          Found
Checking for EpubCheck...     Missing
```

## Usage

From the directory you want to run softcover, run:

    sudo docker run -v $(pwd):/softcover -w /softcover baconscript/softcover softcover <command>

You should be able to generate your book this way. Currently, most other commands are failing with a nokogiri error; I'll dig deeper and find out what's going on here.
