FROM golang:1.13

LABEL "name"="golang tools action"
# This is heavily inspired by Stefan Prodan's work here: https://github.com/stefanprodan/gh-actions-demo
LABEL "maintainer"="Kasper Nissen <kaspernissen@gmail.com>"
LABEL "version"="1.0.0"

LABEL "com.github.actions.icon"="code"
LABEL "com.github.actions.color"="green-dark"
LABEL "com.github.actions.name"="Go Tools"
LABEL "com.github.actions.description"="This is an Action to run go commands."

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]

