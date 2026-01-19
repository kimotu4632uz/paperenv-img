FROM paperist/texlive-ja:2023-debian

RUN --mount=type=bind,source=tlmgr-packages.txt,target=/tmp/tlmgr-packages.txt,ro \
    set -eux; \
    tlmgr update --self; \
    tlmgr install $(grep -v '^\s*#' /tmp/tlmgr-packages.txt | tr '\n' ' '); \
    tlmgr path add
