FROM node:20-alpine

ARG SIGNIFY_TS_REPO=weboftrust/signify-ts
ARG SIGNIFY_TS_BRANCH=development

RUN apk add --no-cache git
RUN git clone --branch ${SIGNIFY_TS_BRANCH} --single-branch https://github.com/${SIGNIFY_TS_REPO}.git
WORKDIR /signify-ts
RUN npm ci

ENTRYPOINT [ "npx", "jest", "examples/integration-scripts/witness.test.ts" ]
# ENTRYPOINT [ "npm", "run", "test:integration" ]
