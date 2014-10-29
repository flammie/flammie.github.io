# Ssh through another ssh server

This is common need for university. scientific computing cluster or probably
all sorts of work place networks too: you need to access the target ssh server
from the internal network which in turn requires you to either push through
vpn, which can often be a pain to get working, or ssh through another server
like so:

    ssh-add
    ssh workplace-gateway
    ssh workplace-sekrit

No more is it necessary, you set up .ssh/config like this:

    Host *
        ForwardAgent yes
    Host workplace-gateway
        ...
    Host workplace-sekrit
        ...
        ProxyCommand ssh -W %h:%p workplace-gateway

and you can just ssh workplace-sekrit from local. The reason I write it up
here, is that I don't have ssh in my dotfiles for some imaginary security
reasons, and it's hard to google, cause the actual recipe is hidden in [the
first stack-overflow hit](https://unix.stackexchange.com/questions/41493/how-to-ssh-to-a-server-using-another-server).

