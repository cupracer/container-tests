FROM registry.suse.com/sles12/portus:2.4.0
MAINTAINER Thomas Schulte "thomas@cupracer.de"

ARG repo
ARG cert

RUN \
	echo "$cert" > /etc/pki/trust/anchors/RHN-ORG-TRUSTED-SSL-CERT.pem && \
	update-ca-certificates && \
	echo "$repo" > /etc/zypp/repos.d/susemanager:dockerbuild.repo && \
	zypper --non-interactive --gpg-auto-import-keys ref && \
	zypper --non-interactive install \
		aaa_base \
		aaa_base-extras \
		curl \
		less \
		net-tools \
		python \
		python-xml \
		python3 \
		sudo \
		tar \
		timezone \
		vim

###

RUN rm -f /etc/zypp/repos.d/susemanager:dockerbuild.repo

