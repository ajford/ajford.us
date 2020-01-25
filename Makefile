BUCKET := ajford.us
GIT_DIR := .git*
SWP := *.sw?

deploy:
	aws s3 sync --exclude "$(GIT_DIR)" --exclude "$(SWP)" . s3://$(BUCKET)

retrieve:
	aws s3 sync s3://$(BUCKET) .

serve:
	python -m SimpleHTTPServer 8080

