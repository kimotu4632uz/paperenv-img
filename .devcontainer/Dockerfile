# paperenv/Dockerfile
FROM paperist/texlive-ja:2023-debian

# tlmgr をビルド時に回して必要パッケージを焼き込む
# - update --self は tlmgr 自体の更新
# - その後に必要パッケージを install
# - 最後にキャッシュを消してサイズを抑える
RUN set -eux; \
    tlmgr update --self; \
    tlmgr install biber collection-mathscience revtex; \
    tlmgr path add
