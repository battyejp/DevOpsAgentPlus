FROM battyejp/devopsubuntu18.04

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
    sudo

RUN curl -sL https://aka.ms/InstallAzureCLIDeb --insecure | sudo bash

#RUN wget -q https://packages.microsoft.com/config/ubuntu/16.04/packages-microsoft-prod.deb -O packages-microsoft-prod.deb
#RUN sudo dpkg -i packages-microsoft-prod.deb
#RUN sudo apt-get install apt-transport-https
#RUN sudo apt-get update
#RUN sudo apt-get install dotnet-sdk-2.1=2.1.300-1
#RUN sudo apt-get install dotnet-sdk-2.2=2.2.203-1

RUN wget https://packages.microsoft.com/config/ubuntu/18.04/packages-microsoft-prod.deb -O packages-microsoft-prod.deb
RUN sudo dpkg -i packages-microsoft-prod.deb
RUN sudo apt-get update; \
    sudo apt-get install -y apt-transport-https && \
    sudo apt-get update && \
    sudo apt-get install -y dotnet-sdk-5.