# kidsle

Kitas, Kindergärten, Spielplätze und Schulen in Leipzig

## Grunt

If you're familiar with [Grunt](http://gruntjs.com/), install the dependencies and run grunt from the root directory

## installing the backend application

### preparations

#### Python

Make sure you have the latest version of python 2.7 installed. (TODO: extend)

#### PIP and virtualenvwrapper

If you want to setup and start the backend, you have to install django and it's requirements. To do so, it is recommended to install and use the python package manager `pip`. For the installation, you need root privileges:

```
$ curl -O https://raw.github.com/pypa/pip/master/contrib/get-pip.py
$ pip install virtualenv
```

With pip, you now can install `virtualenv`. This is a tool to create a python environment without messing with your system packages. To make the use of `virtualenv` easier, it is recommended to install `virtualenvwrapper`:

```
$ pip install virtualenv
$ mkdir .virtualenvs
$ pip install virtualenvwrapper
```

You now only have to configure `virtualenvwrapper`. To do so, add the following lines into your `.bashrc` or `profiles`:

```
export WORKON_HOME=$HOME/.virtualenvs
source /usr/local/bin/virtualenvwrapper.sh
```

Finally, reload the `.bashrc` by running the following command:

```
$ source .bashrc
```

### creating the virtualenv and installing requirements

Now you can use the virtualenvwrapper to create a new virtualenv:

```
$ mkvirtualenv kidsle
```

You now see your prompt prefixed with the current virtualenv. You can deactivate it with `deactivate`. To reactivate it later on, simply use `workon kidsle`.

To install all requirements, simply run the following command from the project directory:

```
$ pip install -r requirements/base.txt
```
