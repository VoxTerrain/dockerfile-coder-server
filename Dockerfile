FROM codercom/code-server:v2

EXPOSE 8080

RUN code-server --install-extension chrmarti.regex 
RUN code-server --install-extension le0zh.vscode-regexp-preivew
