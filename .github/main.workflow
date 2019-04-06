workflow "Update gist with latest tweet" {
  resolves = ["update-gist"]
  on = "schedule(*/1 * * * *)"
}

action "npm ci" {
  uses = "docker://node:alpine"
  runs = "npm"
  args = "ci"
}

action "update-gist" {
  needs = "npm ci"
  uses = "docker://node:alpine"
  runs = "node"
  args = "index.js"
  env = {
    "TWITTER_USER" = "matchai"
    "GIST_ID" = "6d5f84419863089a167387da62dd7081"
  }
  secrets = [
    "GH_TOKEN",
    "TWITTER_CONSUMER_KEY",
    "TWITTER_CONSUMER_SECRET",
    "TWITTER_ACCESS_TOKEN_KEY",
    "TWITTER_ACCESS_TOKEN_SECRET",
  ]
}
