# Flammie's git cheat sheet

Things that I need to look up from internet way too often

## Smooshing history together

E.g. three versions back:

```console
$ git rebase -i HEAD~~~
```

or just find the commit hash and c/p that

## Syncing github or gitlab fork with origin

* [gitlab instructions](https://forum.gitlab.com/t/refreshing-a-fork/32469/2).
* [github instructions](https://docs.github.com/en/github/collaborating-with-pull-requests/working-with-forks/syncing-a-fork)

```console
$ git remote add upstream https://...
$ git checkout master
$ git fetch upstream
$ git pull upstream master
$ git push origin master
$ git checkout -b feature/....
```

## See committed but not pushed stuff

Why is this so complicated fml:

```console
$ git diff --cached
```

## Copy history between repos

```console
$ cd ~/github/organisation/old
$ git log --pretty=email --patch-with-stat --reverse --full-index --binary \
  -- path/to/file_or_folder > patch
$ cd ~/github/organisation/new
$ git am --commiter-date-is-author-date < patch
 ```

Yeah it's just a patch email, you can sed it if you want yay. H/t [Smar on stack
overflow](https://stackoverflow.com/questions/1365541/how-to-move-some-files-from-one-git-repo-to-another-not-a-clone-preserving-hi/11426261#11426261)

## Figure out why GPG signing does not work again

Git is good at using gpg agent and deducing what key will sign emails even when
you don't have stuff explicitly set up. Except when it doesn't. The magic spell
to figure it out is just `GIT_TRACE=1` environment variable:

```console
$ GIT_TRACE=1 git commit stuff and files
17:15:36.228515 git.c:418               trace: built-in: git commit
hint: Waiting for your editor to close the file... 17:15:36.231567
run-command.c:643       trace: run_command:
GIT_INDEX_FILE=/home/flammie/github/apertium/apertium-fin-smn/.git/next-index-10865.lock
vim /home/flammie/github/apertium/apertium-fin-smn/.git/COMMIT_EDITMSG
17:15:41.001166 run-command.c:643       trace: run_command: gpg --status-fd=2
-bsau 'Flammie A Pirinen <flammie@iki.fi>'
error: gpg failed to sign the data
fatal: failed to write commit object
```

You can nearly copy paste the gpg command line to figure out how to get it to
work, maybe there is a typo in email, maybe gpg agent is acting up and it will
automatically work after you sign one stdin or file.

```console
$ gpg -bsau 'Flammie A Pirinen <flammie@iki.fi>'
testing
-----BEGIN PGP SIGNATURE-----
...
```

so it just worked here.
