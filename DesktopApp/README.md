## Crea Applicazione

Una volta effettuato il deploy su tomcat servirà:
- Node.js 
- Nativefier 
- Inno setup

> Per installare nativefier, una volta installato node:
- Apreire il CMD di node 
- Eseguire il comando 
```
npm install -g nativefier
```

Per creare l'app bisogna eseguire, nel CMD di node, il comando:
```
nativefier --name “Gesatione Candidati” --lang "it" --full-screen false --icon "C:\Users\username\Desktop\3em.ico" “http://localhost:8085/Gestione-Candidature/home.jsp"
```
