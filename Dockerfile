FROM battyejp/devopsubuntu18.04

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
    sudo

RUN curl -sL https://aka.ms/InstallAzureCLIDeb | sudo bash