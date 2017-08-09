deploy-asset:
	git checkout $(DEPLOY_ASSET)
	aws s3 sync --exclude .DS_Store --delete asset s3://tidepool-$(DEPLOY_ASSET)-asset/

deploy-dev-asset:
	@$(MAKE) deploy-asset DEPLOY_ASSET=dev

deploy-stg-asset:
	@$(MAKE) deploy-asset DEPLOY_ASSET=stg

deploy-int-asset:
	@$(MAKE) deploy-asset DEPLOY_ASSET=int

deploy-prd-asset:
	@$(MAKE) deploy-asset DEPLOY_ASSET=prd

deploy-all-assets: deploy-dev-asset deploy-stg-asset deploy-int-asset deploy-prd-asset
