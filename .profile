# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# maven and ant stuff to path
M2_HOME=/usr/local/apache-maven/apache-maven-3.2.1
export M2_HOME
M2=/usr/local/apache-maven/apache-maven-3.2.1/bin
export M2

MAVEN_HOME="/usr/local/apache-maven/apache-maven-3.2.1"
export MAVEN_HOME

MAVEN_OPTS="-Xms512m -Xmx2048m -XX:MaxPermSize=1536m -XX:ReservedCodeCacheSize=64m -XX:CompileCommand=exclude,com/infusion/databridge/MemoryRst,loadMeta -Dfile.encoding=ISO-8859-1"
export MAVEN_OPTS

ANT_HOME=/usr/local/apache-ant/apache-ant-1.9.3
export ANT_HOME

#PATH="$PATH:$JAVA_HOME/bin:$M2_HOME/bin:$ANT_HOME/bin"
PATH="$PATH:$M2:$MAVEN_HOME/bin:$ANT_HOME/bin"
export PATH


# svn things (as suggested by the "setting up a new Linux installation" article on confluence)
SVN_HOME="https://scm.infusiontest.com/svn"
CRM_HOME="$SVN_HOME/crmalpha"
export SVN_HOME
export CRM_HOME
