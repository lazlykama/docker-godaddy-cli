# lazly/docker-cli

- Source repo: https://github.com/cabemo/godaddy-cli
- Docker hub: https://hub.docker.com/r/lazly/godaddy-cli
- Docker build file: https://github.com/lazlykama/docker-godaddy-cli

This is a very useful tool, but if you do not use `golang` in general not trivial to use because you have to compile. Not popular in general so it's not in any repo either in Linux distros or OSX. Because these I decided build a lightway docker image to make it usable anywhere.

## How to use

Put your godaddy credentials into a file, fo example: `~/.godaddy_credentials.json`:
```
{
  "key": "xxx",
  "secret": "xxx"
}
```
_Get your credential from GoDaddy here: https://developer.godaddy.com/keys_

Create an alias for your docker image (you can put this alias into your bash file if you want to make it permanent):
```
alias godaddy="docker run -it --rm -v ~/.godaddy_credentials.json:/root/.config/godaddy/credentials.json lazly/godaddy-cli:latest"
```

Just use it:
```
godaddy
```

## Howto to use from source:

Pull, after build:
```
docker build -t godaddy-cli .
alias godaddy="docker run -it --rm -v ~/.godaddy_credentials.json:/root/.config/godaddy/credentials.json godaddy-cli:latest"
```

Alias:
```
alias godaddy="docker run -it --rm -v ~/.godaddy_credentials.json:/root/.config/godaddy/credentials.json lazly/godaddy-cli:latest"
```

Just use anytime:
```
godaddy
```
