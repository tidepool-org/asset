# asset

Static assets for each deployed environment `dev`, `stg`, `int`, and `prd`.

There is one branch per environment with the branch name matching the environment name.

## Makefile

The Makefile allows a Tidepool operator to easily sync the latest assets to a target environment.

``` bash
make deploy-dev-asset
```

The Makefile will checkout the target environment branch and use `aws s3 sync` to synchronize the files in the `asset` directory with the environment asset bucket (eg. `tidepool-dev-asset`).
