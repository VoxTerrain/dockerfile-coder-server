FROM codercom/code-server:latest

EXPOSE 8080
EXPOSE 3001
EXPOSE 25565
# Rulează code-server fără autentificare cu parolă
RUN code-server --install-extension chrmarti.regex --auth none
