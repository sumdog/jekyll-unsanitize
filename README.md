jekyll-unsanitize
=================

[![Gem](https://img.shields.io/gem/v/jekyll-unsanitize.svg?style=plastic)]()

Jekyll doesn't allow for source files, such as layouts or includes, to be outside/below a site's source tree. This worked in previous versions, but was disabled per github requirements for security. The jekyll-unsanitize gem resolves this issue by monkey patching the affected parts of Jekyll. The relevant bug report can be found at the following:

https://github.com/jekyll/jekyll/issues/3248

Versions
--------

* Use jekyll-unsanitize 0.3 for Jekyll 2.5.3
* Use jekyll-unsanitize 0.4 for Jekyll 3.0.1

Installation
------------

To install the current release, run the following:

    gem install jekyll-unsanitize

To install from source:

    git clone https://github.com/sumdog/jekyll-unsanitize
    cd jekyll-unsanitize
    gem build jekyll-unsanitize.gemspec
    gem install jekyll-unsanitize-<version>.gem

Usage
-----

In your _config.yml_, add the following section:

    gems: 
      - jekyll-unsanitize
