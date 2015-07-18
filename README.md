## Swacker: Code to Hosted Container in 3 Minutes
Swacker is a minimal static webapp which is deployed to [Giant Swarm](https://giantswarm.io) using [Wercker's](https://wercker.com) continuous integration service.

The most interesting thing about Swacker is that it doesn't require you to install anything locally. You don't need `git`, `docker`, `boot2docker`, or anything else installed to launch your own static containerized website on Giant Swarm. Shoot, you could probably launch the software using your phone, now I think about it.

Let's get started with the detailed walk-through for deploying the code. If you like, you can skip to the [blog post version](http://giantswarm.io/deploy-a-ghost-blog-in-10-minutes/).

### Prerequisites
At a minimum you will need the following to launch the software:

* A Github [account](https://github.com).
* A Giant Swarm [account](https://giantswarm.io).
* A Wercker [account](https://wercker.com).

Additionally, if you want to do local development, testing and deployments, you should have the following installed:

* A functional install of [boot2docker](https://github.com/kordless/boot2docker-ing).
* The `swarm` command line client [installed](http://docs.giantswarm.io/reference/installation/).
* The `wercker` command line client [installed](http://devcenter.wercker.com/docs/using-the-cli/installing.html).

### Video Walk-through
Videos like these are becoming a dime-a-dozen nowadays. I do mine from the hip, and try not to overproduce them. I like to think that gives them a slightly artisan flavor!

[![](https://raw.githubusercontent.com/kordless/swarm-ghost/master/assets/video.png)](https://vimeo.com/120735541)




### Getting Started
