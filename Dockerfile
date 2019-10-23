FROM codercom/code-server:latest

RUN code-server --install-extension chrmarti.regex 
RUN code-server --install-extension le0zh.vscode-regexp-preivew
