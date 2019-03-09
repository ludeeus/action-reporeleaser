FROM python:alpine

COPY runaction.sh /runaction.sh
RUN chmod +x /runaction.sh
RUN python3 -m pip install reporeleaser

ENTRYPOINT ["/runaction.sh"]

LABEL "name"="reporeleaser"
LABEL "maintainer"="Ludeeus <ludeeus@gmail.com>"
LABEL "version"="0.0.1"
LABEL "com.github.actions.name"="reporeleaser"
LABEL "com.github.actions.description"="Create a new release using reporeleaser."
LABEL "com.github.actions.icon"="globe"
LABEL "com.github.actions.color"="green"
