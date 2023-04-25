COURSECODE=MTHxxx

SSH_HOST=gauss.math.csi.cuny.edu
SSH_PORT=22
SSH_USER=mvj
SSH_TARGET_DIR=/home/mvj/public_html/$(COURSECODE)-$(shell git symbolic-ref --short HEAD)

QUARTO=quarto
OUTPUTDIR=_site

render:
	$(QUARTO) render

ssh_upload: render
	scp -P $(SSH_PORT) -r $(OUTPUTDIR)/* $(SSH_USER)@$(SSH_HOST):$(SSH_TARGET_DIR)

rsync_upload: render
	rsync -e "ssh -p $(SSH_PORT)" -P -rvzc --delete $(OUTPUTDIR)/ $(SSH_USER)@$(SSH_HOST):$(SSH_TARGET_DIR) --cvs-exclude

.PHONY: render ssh_upload rsync_upload
