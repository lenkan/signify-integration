# signify-integration
Integration scripts and applications for Signify Clients


## To run locally

NOTE: Needs a signify ts branch with this change: https://github.com/lenkan/signify-ts/commit/7f04b80d97c9b2cbd83a6bed1411deabf1adde65

Set required environment variables. Either in a .env file in repository root. (Docker compose picks these up automatically)

```bash
KERIA_TAG=latest
KERI_WITNESS_DEMO_TAG=1.1.0
GLEIF_VLEI_TAG=latest
SIGNIFY_TS_REPO=lenkan/signify-ts
SIGNIFY_TS_BRANCH=integration-scripts
```

Or by setting environment variables:

```bash
export KERIA_TAG=latest
export KERI_WITNESS_DEMO_TAG=1.1.0
export GLEIF_VLEI_TAG=latest
export SIGNIFY_TS_REPO=lenkan/signify-ts
export SIGNIFY_TS_BRANCH=integration-scripts
```

Then build and run

```bash
docker compose build
docker compose up --pull deps
docker compose run --rm signify-ts
```
