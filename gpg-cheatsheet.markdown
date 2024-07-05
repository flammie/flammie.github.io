# Flammie's gpg cheat sheet

Things that I need to look up from internet way too often

## Unexipring keys

When keys expire you need to set new expiration date for both main and sub
keys...

```console
$ gpg --list-keys flammie@iki.if
$ gpg --edit-keys KEYSID
gpg> expire
blah blah expiration? (0) 2y
Are you sure? (y/N) y
gpg> key 1
gpg> expire
blah blah expiration? (0) 2y
Are you sure? (y/N) y
gpg> save
gpg> exit
```

## Exporting keys

When you need to send your keys to people or show them, ideally it happens in
person so you may need to find out the way fast and without hassle. Here's
the most typical ways:

```console
$ gpg --armor --export flammie@iki.fi
$ gpg --export --output flammie-pubkey.gpg flammie@iki.fi
```

