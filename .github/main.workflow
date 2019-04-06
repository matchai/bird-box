workflow "Update tweet gist" {
  resolves = ["update-gist"]
  on = "schedule(*/2 * * * *)"
}

action "update-gist" {
  uses = "matchai/bird-box@master"
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
