FROM python:2.7-alpine
ARG sdk_url="http://dl.google.com/dl/cloudsdk/channels/rapid/downloads/google-cloud-sdk-145.0.0-linux-x86_64.tar.gz"
ARG uid=1000

RUN adduser -D -u $uid -G users user

WORKDIR /home/user
USER user
RUN wget ${sdk_url} -O - | tar xz
	
ENV PATH="$PATH:/home/user/google-cloud-sdk/bin"

RUN gcloud components install alpha
