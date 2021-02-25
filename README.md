# Foxglove Apt Repository

Here you find the scripts to manage our apt repository (hosted at http://apt.foxglove.dev).

## How it works

[aptly](https://www.aptly.info/) packages the debs from the packages folder into their appropriate repos and publishes these repos to the `docs` folder. Github pages is configured to serve the docs folder as static files under the `apt.foxglove.dev` cname.

## Deploying

To deploy a new deb package:

- Add the deb to the appropriate release channel (stable or canary) within the packages folder.
- `make publish`
- Commit any changes to git.
- Push the changes.

Note: Publish requires the Foxglove Software Packaging gpg key.
