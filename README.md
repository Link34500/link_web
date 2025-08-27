# Mon site "Portofolio"

Un site de présentation de moi même.

## 📥 Installation

```bash
git clone https://github.com/Link34500/link_web.git
```

Ensuite lancer le serveur avec les commandes suivante (Docker est nécessaire) : 
```bash
docker build . -t flask_server
docker run --rm -d -p 5000:5000 flask_server
```
Cela ouvriras un serveur web de production en locale sur le port 5000.
Pour le dévelopemment vous pouvez utiliser python et le serveur Flask par défaut, en lançant le fichier app.py

