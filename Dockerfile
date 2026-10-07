#will use default OS which is,
#linux(debian, refer: https://hub.docker.com/r/oven/bun/tags?name=1.4.2)

FROM oven/bun:1.4.2 AS base  

WORKDIR /app
# copy all except node_modules because it was listed in .dockerignore

COPY package.json package.json
COPY bun.lock bun.lock
RUN bun install
COPY .gitignore .gitignore
COPY tsconfig.json tsconfig.json
COPY src src

ENTRYPOINT ["bun", "run", "dev"]