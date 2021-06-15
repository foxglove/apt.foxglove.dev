# Foxglove Apt Repository

Here you find the scripts to manage our apt repository (hosted at http://apt.foxglove.dev).

## How it works

- GitHub Actions runs [Aptly](https://www.aptly.info/) on every commit to the `main` branch.
- Aptly packages the debs from the `packages` folder into their appropriate repos.
- The generated repos are published to the `pages` branch and served by Github Pages under the `apt.foxglove.dev` cname.

## Deploying

To deploy a new deb package:

- Add the deb to the appropriate release channel (stable or canary) within the packages folder.
- Commit changes to main and wait for GitHub Actions to run.
- Verify results on the `pages` branch.
