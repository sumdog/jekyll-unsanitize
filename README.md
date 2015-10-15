jekyll-unsanitize
=================

Jekyll 2.5.3 doesn't allow for source files, such as layouts or includes, to be outside/below a site's source tree. This worked in previous versions, but was disabled per github requirements for security. The jekyll-unsanitize gem resolves this issue by monkey patching the affected parts of Jekyll, as per the bug report, it doesn't look like there are any plans to address this issues in future releases:

https://github.com/jekyll/jekyll/issues/3248

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
