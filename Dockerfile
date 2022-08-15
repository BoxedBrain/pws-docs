#escape=\
FROM squidfunk/mkdocs-material:8.4.0

RUN apk add --no-cache nodejs

RUN pip install --no-cache-dir --upgrade pip \ 
    mkdocs-git-revision-date-localized-plugin \
    mkdocs-awesome-pages-plugin \
    mkdocs-macros-plugin \
    mkdocs-glightbox