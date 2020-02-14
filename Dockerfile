FROM federatedwiki/base:0.21.0
RUN apk add --update bash git && rm -rf /var/cache/apk/*

WORKDIR /usr/local/lib/node_modules/wiki/
# no need to repeat https://github.com/fedwiki/wiki/blob/master/package.json
RUN npm i \
    wiki-server@0.17.2 \
    wiki-plugin-graph \
    wiki-plugin-cytodemo \
    wiki-plugin-rostermatic \
    wiki-plugin-tab \
    wiki-plugin-fivestar \
    wiki-plugin-json \
    wiki-plugin-rss \
    wiki-plugin-tally \
    wiki-plugin-shell \
    wiki-plugin-slide \
    wiki-plugin-frame \
    wiki-plugin-zones \
    wiki-plugin-register \
    wiki-plugin-print \
    wiki-plugin-signature \
    wiki-plugin-soundcloud \
    wiki-plugin-metamodel

WORKDIR /root/.wiki/

