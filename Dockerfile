FROM python:2.7-alpine
ARG sdk_url="http://dl.google.com/dl/cloudsdk/channels/rapid/downloads/google-cloud-sdk-162.0.1-linux-x86_64.tar.gz"
ARG uid=1000

RUN apk add --no-cache openssh-client
RUN adduser -D -u $uid -G users user

WORKDIR /home/user
USER user
RUN wget ${sdk_url} -O - | tar xz
	
ENV PATH="$PATH:/home/user/google-cloud-sdk/bin"

RUN gcloud components install alpha
RUN gcloud components install app-engine-python
