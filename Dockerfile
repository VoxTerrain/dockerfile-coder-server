FROM codercom/code-server:latest
# Copiază scriptul de pornire în container
COPY entrypoint.sh /tmp/entrypoint.sh

# Schimbă drepturile de execuție ale scriptului de pornire
RUN chmod +x /usr/bin/entrypoint.sh

# Setează variabila de mediu pentru parolă
ENV PASSWORD=vox123

EXPOSE 8080
EXPOSE 25565
EXPOSE 3001
RUN code-server --install-extension chrmarti.regex 
RUN code-server --install-extension le0zh.vscode-regexp-preivew

# Copiază scriptul de pornire într-un loc temporar
# Setează permisiunile de execuție în locul temporar
RUN chmod +x /tmp/entrypoint.sh

# Muta scriptul în locul final și curăță
RUN mv /tmp/entrypoint.sh /usr/bin/entrypoint.sh && rm -f /tmp/entrypoint.sh

# Rulează scriptul de pornire la pornirea containerului
ENTRYPOINT ["/usr/bin/entrypoint.sh"]
