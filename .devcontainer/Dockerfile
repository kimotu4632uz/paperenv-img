ARG TEXLIVE_YEAR=latest
FROM paperist/texlive-ja:${TEXLIVE_YEAR}-debian

RUN --mount=type=bind,source=tlmgr-packages.txt,target=/tmp/tlmgr-packages.txt,ro \
    set -eux; \
    tlmgr update --self; \
    tlmgr install $(grep -v '^\s*#' /tmp/tlmgr-packages.txt | tr '\n' ' '); \
    tlmgr path add
