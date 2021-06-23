# Flammie's git cheat sheet

Things that I need to look up from internet way too often

## Smooshing history together

Three versions back:

`git rebase -i HEAD~~~`

or just find the commit hash and c/p that

## Syncing github or gitlab fork with origin

* [gitlab instructions](https://forum.gitlab.com/t/refreshing-a-fork/32469/2).
* [github instructions](https://docs.github.com/en/github/collaborating-with-pull-requests/working-with-forks/syncing-a-fork)

```
git remote add upstream https://...
git checkout master
git fetch upstream
git pull upstream master
git push origin master
git checkout -b feature/....
```
