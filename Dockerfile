FROM gitpod/workspace-full:latest

USER root

RUN apt-get update \
  && DEBIAN_FRONTEND=noninteractive \
     TZ="${TZ}" \
       apt-get install -y --no-install-recommends \
         apt-utils \
         ant \
         curl \
         locales \
         tzdata \
         wget \
  && apt-get clean \
  && rm -rf /var/cache/apt/* \
  && rm -rf /var/lib/apt/lists/* \
  && rm -rf /tmp/* \
  && rm -rf /var/tmp/* \


USER gitpod



