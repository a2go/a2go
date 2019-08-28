### Editing and publishing a2go.github.io

We use [Hugo](https://gohugo.io) for building https://a2go.org.

The source and published site are both found in the `master` branch. The published site is served from the
[`public`](public) directory, which is a submodule pointing to the [github./com/a2go/a2go.github.io](github./com/a2go/a2go.github.io) repository, which is the fully rendered version of the github organization pages for a2go.org.

### Making changes/running locally

* Clone this repo
* Make a branch
* Install **hugo**, for instance `brew install hugo`
* Run `hugo serve -D` to serve locally (this will live reload)
* Once you are happy with any local changes, commit, push your branch, make a pull request
* Merging the Pull Request to `master` will cause https://a2go.github.io to be rebuilt once the github action executes (about 7 minutes).

Uses [github actions](https://github.com/StevenACoffman/hugo-deploy-gh-org-pages) for automation.

### YOLO version: Editting directly and publishing a2go.org

Make changes to the source markdown files here in this repository. 7 minutes later, our website is fully baked. Mmmm... smells delicious!

### OHNOES version: Making changes/running locally without github actions automation

* Clone this repo
* Install **hugo**, for instance `brew install hugo`
* Run `hugo serve -D` to serve locally (this will live reload)
* Once you are happy with any local changes, run the `./deploy.sh` script
