FROM codercom/code-server:latest
# Copiază scriptul de pornire în container
COPY entrypoint.sh /usr/bin/entrypoint.sh

# Schimbă drepturile de execuție ale scriptului de pornire
RUN chmod +x /usr/bin/entrypoint.sh

# Setează variabila de mediu pentru parolă
ENV PASSWORD=vox123

EXPOSE 8080
EXPOSE 25565
EXPOSE 3001
RUN code-server --install-extension chrmarti.regex 
RUN code-server --install-extension le0zh.vscode-regexp-preivew

# Copiază scriptul de pornire în container
COPY entrypoint.sh /usr/bin/entrypoint.sh
RUN chmod +x /usr/bin/entrypoint.sh

# Rulează scriptul de pornire la pornirea containerului
ENTRYPOINT ["/usr/bin/entrypoint.sh"]
