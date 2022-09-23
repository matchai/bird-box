<p align="center">
  <img width="400" src="https://user-images.githubusercontent.com/4658208/54479268-752bb580-47f1-11e9-9d01-edd8b574aa92.png">
  <h3 align="center">exchabge rate</h3>
  <p align="center">Update a pinned gist to contain the latest exchange rate</p>
</p>

---

> 📌✨ For more pinned-gist projects like this one, check out: https://github.com/matchai/awesome-pinned-gists

## Setup

### Prep work

1. Create a new public GitHub Gist (https://gist.github.com/)
1. Create an access token with the `gist` scope and copy it. (https://github.com/settings/tokens/new)
### Project setup

1. Fork this repo
1. Edit the [environment variables](https://github.com/matchai/bird-box/blob/bcc05c5376710b231c9a81c102df6e51efcc6fc7/.github/workflows/schedule.yml#L13-L19) in `.github/workflows/schedule.yml`:

   - **GIST_ID:** The ID portion from your gist url: `https://gist.github.com/matchai/`**`6d5f84419863089a167387da62dd7081`**.
   - **BASE:** The exchange rate base.(USD,EUR or etc...) 

2. Go to the repo **Settings > Secrets**
3. Add the following environment variables:
   - **GH_TOKEN:** The GitHub access token generated above.
