FROM codercom/code-server:latest

EXPOSE 8080
EXPOSE 25565
EXPOSE 3001
# Copiază scriptul de pornire într-un loc temporar
COPY entrypoint.sh /tmp/entrypoint.sh

# Setează permisiunile de execuție în locul temporar
RUN chmod +x /tmp/entrypoint.sh

# Muta scriptul în locul final și curăță
RUN mv /tmp/entrypoint.sh /usr/bin/entrypoint.sh && rm -f /tmp/entrypoint.sh

# Rulează scriptul de pornire la pornirea containerului
ENTRYPOINT ["/usr/bin/entrypoint.sh"]
