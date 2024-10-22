# Self Study Coding 

## Deployment

This site is created by mdbook and deployed with netlify. 
The deployment command is

```sh
curl -L https://github.com/rust-lang/mdBook/releases/download/v0.4.40/mdbook-v0.4.40-x86_64-unknown-linux-gnu.tar.gz | tar xvz && ./mdbook build
```

Base directory is `/`, and publish directory is `book`.
