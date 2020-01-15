FROM registry.suse.com/suse/sle15:15.1
MAINTAINER Thomas Schulte "thomas@cupracer.de"

### 

ARG repo
ARG cert

RUN \
	echo "$cert" > /etc/pki/trust/anchors/RHN-ORG-TRUSTED-SSL-CERT.pem && \
	update-ca-certificates && \
	echo "$repo" > /etc/zypp/repos.d/susemanager:dockerbuild.repo

### 

RUN \
	zypper -n ref && \
	zypper -n in \
		vi

###

RUN rm -f /etc/zypp/repos.d/susemanager:dockerbuild.repo

