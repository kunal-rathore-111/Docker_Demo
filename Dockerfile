#will use default OS which is,
#linux(debian, refer: https://hub.docker.com/r/oven/bun/tags?name=1.4.2)

FROM oven/bun:1.4.2 AS base  

# copy all except node_modules because it was listed in .dockerignore
COPY . .

RUN bun install

ENTRYPOINT ["bun", "run", "dev"]