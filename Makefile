BUCKET := ajford.us

deploy:
	aws s3 sync . s3://$(BUCKET)

retrieve:
	aws s3 sync s3://$(BUCKET) .

serve:
	python -m SimpleHTTPServer 8080

