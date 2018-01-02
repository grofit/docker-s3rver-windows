FROM microsoft/nanoserver

ENV NodeVersion 8.9.2

ADD https://nodejs.org/dist/v${NodeVersion}/node-v${NodeVersion}-win-x64.zip C:/node.zip

RUN powershell -Command \
    Expand-Archive C:/node.zip C:/ ; \
    Rename-Item C:/node-v%NodeVersion%-win-x64 node ; \
    Remove-Item -Path c:/node.zip
    
RUN SETX PATH C:/node

WORKDIR c:/
RUN mkdir temp
RUN npm install -g s3rver

EXPOSE 4568

ENTRYPOINT s3rver -h localhost -p 4568 -d c:/temp
