#escape=\
FROM squidfunk/mkdocs-material:8.4.0rc1

RUN apk add --no-cache nodejs

RUN pip install --no-cache-dir --upgrade pip && \
    pip install --no-cache-dir \
    mkdocs-git-revision-date-localized-plugin \
    mkdocs-git-revision-date-plugin \
    mkdocs-awesome-pages-plugin \
    mkdocs-macros-plugin