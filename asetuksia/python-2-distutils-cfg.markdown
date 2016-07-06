# Python 2 distutils --user install on SUSE etc.

When trying to use distutils on cluster for morfessor-2.0.1:

    setup.py install --user
    error: can't combine user with with prefix/exec_prefix/home or install_(plat)base

Of course I do not have any of the said settings or targets there so something
must've gone wrong. Solution from
<https://stackoverflow.com/questions/4495120/combine-user-with-prefix-error-with-setup-py-install>:
suse has this default in `/usr/lib64/python2.6/distutils/distutils.cfg` for
site configuration which must be deleted using dotfile `~/pydistutils.cfg`:

    [install]
    prefix=


