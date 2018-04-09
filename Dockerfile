FROM  microsoft/dotnet:2.0-runtime
MAINTAINER Spencer Owen <sowen@netdocuments.com>

WORKDIR /octo

ENV OCTOVERSION 4.31.7
RUN curl -o OctopusTools.tar.gz https://download.octopusdeploy.com/octopus-tools/$OCTOVERSION/OctopusTools.$OCTOVERSION.portable.tar.gz && tar -xvzf OctopusTools.tar.gz && rm OctopusTools.tar.gz

ENTRYPOINT [ "dotnet", "Octo.dll" ]
CMD [ "help" ]
