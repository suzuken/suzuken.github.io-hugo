# suzuken.github.io - hugo

This repository is a generator for suzuken.github.io using [Hugo](https://gohugo.io).

## Development

    make server

launches built-in server by Hugo. Open `http://127.0.0.1:1313` to check your contents. Livereload is also enable. For detail, see [Using Hugo](https://gohugo.io/overview/usage/).

## Deploy

    make build
    make deploy MSG=commit_msg

`make build` to build contents to `public`, and `make deploy` makes commit and git push to my own github pages. This method is based on [Hosting on GitHub Pages](http://gohugo.io/tutorials/github-pages-blog/).

