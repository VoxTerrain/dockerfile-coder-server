FROM codercom/code-server:latest
# Setează variabila de mediu pentru parolă
ENV PASSWORD=vox123

RUN code-server --install-extension chrmarti.regex 

EXPOSE 8080
EXPOSE 25565
EXPOSE 3001

RUN code-server --install-extension le0zh.vscode-regexp-preivew
# Setează parola direct în Dockerfile (doar pentru scopuri de dezvoltare/testare)
RUN code-server --install-extension chrmarti.regex --auth password --password "vox123"

