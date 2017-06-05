Realismus Modding Website code
------------------------------

To make any changed to the website, make sure you are in the `develop` branch. Change any file and create a
pull request.


## Building

Install ruby. (macOS: `brew install ruby`)
Inside the repo, run:

```
gem install bundler
bundle install
```

To build the site into `_site`:
```
bundle exec jekyll build
```

## Serving as local web server

Use the previously mentioned steps to install the dependencies. Then run:

```
bundle exec jekyll serve
```

## License

Copyright (c) Realismus Modding.

The manual content is CC-BY-4.0.
