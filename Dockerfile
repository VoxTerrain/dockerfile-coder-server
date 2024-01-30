FROM codercom/code-server:latest

EXPOSE 8080
EXPOSE 3001
# Copiază scriptul de pornire în container
COPY entrypoint.sh /usr/bin/entrypoint.sh

# Setează permisiunile de execuție ale scriptului de pornire
RUN chmod +x /usr/bin/entrypoint.sh

# Rulează scriptul de pornire la pornirea containerului
ENTRYPOINT ["/usr/bin/entrypoint.sh"]
