workflow "Hugo build" {
  resolves = [
    "Hugo Action",
  ]
  on = "push"
}

action "Fetch git submodules" {
  uses = "srt32/git-actions@master"
  args = "submodule sync --recursive && git submodule update --init --recursive"
}

action "Hugo Action" {
  uses = "srt32/hugo-action@master"
  needs = ["Filters for GitHub Actions", "Fetch git submodules"]
}

action "Filters for GitHub Actions" {
  uses = "actions/bin/filter@master"
  args = "branch master"
}
