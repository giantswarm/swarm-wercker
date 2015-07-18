## Swacker: Code to Hosted Container in 3 Minutes
Swacker (swarm-wercker) is a minimal static webapp which is deployed to [Giant Swarm](https://giantswarm.io) using [Wercker's](https://wercker.com) continuous integration service. Giant Swarm's shared public cluster is currently in [private alpha](https://giantswarm.io/request-invite/). but we also do on-prem and dedicated solutions, both of which should work with this solution.

You should ping [me on Twitter](https://twitter.com/kordless) if you need your signup pushed through.

The most interesting thing about Swacker is the fact you don't need `git`, `docker`, `boot2docker`, or anything else installed locally to launch your own containerized website on Giant Swarm. Shoot, you could probably launch the software using your phone, now I think about it.

Let's get started with the detailed walk-through for deploying the code. If you like, you can skip to the [blog post version](http://giantswarm.io/code-to-hosted-container-no-docker-required/).

### Prerequisites
At a minimum you will need the following to launch the software:

* A Github [account](https://github.com).
* A Giant Swarm [account](https://giantswarm.io).
* A Wercker [account](https://wercker.com).

If you want to do local development, testing, and deploys you should have the following installed:

* A functional install of [boot2docker](https://github.com/kordless/boot2docker-ing).
* The `swarm` command line client [installed](http://docs.giantswarm.io/reference/installation/).
* The `wercker` command line client [installed](http://devcenter.wercker.com/docs/using-the-cli/installing.html).

### Video Walk-through
Videos like these are becoming a dime-a-dozen nowadays. I do mine from the hip, and try not to overproduce them. I like to think that gives them a slightly artisan flavor, or at least that's what I tell myself anyway.

[![](https://raw.githubusercontent.com/kordless/swarm-wercker/master/static/video.png)](https://vimeo.com/120735541)

### Getting Started
You should be able to do all these steps from a web browser, but it's also possible to use `git` locally to do the checkout and commits, and may make it a bit easier to edit code for pushing things to production.

#### Fork the Repo
Start by forking [this repository](https://github.com/giantswarm/swarm-wercker) by clicking on the **fork** button at the top right of the repository page on Github. Fork the repo into a publicly accessable organization or your default organization on Github:

![fork this](https://raw.githubusercontent.com/kordless/swarm-wercker/master/static/fork.png)

#### Log In to Wercker and Add the Project
Next, head on over to [Wercker's login page](https://app.wercker.com/sessions/new) and click on the **Log in with Github** button at the bottom. You may need to do some addtional setup for your worker account. 

Once you are doin with setting up your account, you'll want to allow Wercker to have access to your public and private repos:

![all your base](https://raw.githubusercontent.com/kordless/swarm-wercker/master/static/wercker.png)

Click on the [create new applicaiton](https://app.wercker.com/#applications/create) pulldown at the top of the page to create a new application. You'll click on the ***Use Github*** option in step #1 and then select the repo you forked earlier in step #2:

![repo'd](https://raw.githubusercontent.com/kordless/swarm-wercker/master/static/repo.jpg)

Under step #3, **select owner**, choose the default self-organization. Under step #4, **configure access**, choose **wercker will checkout the code without using an SSH key** and click `next step`. Regardless of whether Wercker finds a valid `wercker.yml` file in step #5, simply click `next step` and then click the `finish` button.

You should be taken to the **project overview** page for the `swarm-wercker` project.

#### Create a Deploy Target
At the top right of the `swarm-wercker` project, click on the **gear icon** to view the application's settings. Click on the **deploy targets** tab to the left, and then click on the **add deploy target** pulldown. Select **custom deploy** and then enter **prod** for your deploy target name. Check the **auto deploy successful builds to branch** checkbox and enter **master** in the branch field:

![repo'd](https://raw.githubusercontent.com/kordless/swarm-wercker/master/static/repo.png)

Click save and then click on the **add new variable** button. You will need to create three variables, one named `gsuser`, one named `gspass`, and one name `gsenv`. The values will be, respectivly, your Giant Swarm username, your password and your desired environment (which usually defaults to <username>/dev).

*Note: Using your username and password from one site in another site is less than ideal. While Giant Swarm supports tokenized operations via our API, we do not (yet) do so with our hosted Docker registry. Please contact me for more information on how to work around this issue until we get our registry authentication sorted around!*



