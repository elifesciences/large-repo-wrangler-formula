# `large-repo-wrangler` formula

This SaltStack formula installs a collection of tools required to wrangle large repositories on to Github.

Large repositories are those with files larger than 100MB (the maximum allowed), either in the current working set of
files or somewhere in their history.

Within your Builder installation, run:

    PROJECT=large-repo-wrangler vagrant up
    
and then

    PROJECT=large-repo-wrangle vagrant ssh

Related repositories:

* [playbook](elife-playbook/operations/elifesciences-publications/large-repositories.md)
* [elife-pub-scripts](https://github.com/elifesciences/elife-pub-scripts)

[MIT licensed](LICENCE.txt)
