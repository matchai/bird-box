<p align="center">
  <img width="400" src="https://user-images.githubusercontent.com/4658208/54479268-752bb580-47f1-11e9-9d01-edd8b574aa92.png">
  <h3 align="center">bird-box</h3>
  <p align="center">Update a pinned gist to contain the latest tweets of a user</p>
</p>

---

> 📌✨ For more pinned-gist projects like this one, check out: https://github.com/matchai/awesome-pinned-gists

## Setup

### Prep work

1. Create a new public GitHub Gist (https://gist.github.com/)
1. Create an access token with the `gist` scope and copy it. (https://github.com/settings/tokens/new)
1. Create a new Twitter app (https://developer.twitter.com/en/apps/create)
1. On the App page for your newly created app, generate an "Access token & access token secret" and copy all keys and tokens.

### Project setup

1. Fork this repo
1. Edit the [environment variables](https://github.com/matchai/bird-box/blob/bcc05c5376710b231c9a81c102df6e51efcc6fc7/.github/workflows/schedule.yml) in `.github/workflows/schedule.yml`:

   - **TWITTER_USER:** The user handle of the twitter account.
   - **GIST_ID:** The ID portion from your gist url: `https://gist.github.com/matchai/`**`6d5f84419863089a167387da62dd7081`**.

1. Go to the repo **Settings > Secrets**
1. Add the following environment variables:
   - **GH_TOKEN:** The GitHub access token generated above.
   - **TWITTER_CONSUMER_KEY:** Your Twitter consumer API key.
   - **TWITTER_CONSUMER_SECRET:** Your Twitter consumer secret.
   - **TWITTER_ACCESS_TOKEN_KEY:** Your Twitter access token key.
   - **TWITTER_ACCESS_TOKEN_SECRET:** Your Twitter access token secret.
