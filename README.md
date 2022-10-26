# Gestione-Candidature

![GitHub language count](https://img.shields.io/github/languages/count/TreeEmmeDev/Gestione-Candidature?color=%23eb5a1c&label=Linguaggi&style=for-the-badge) 

App creata con servlet e jsp per la gestione delle candidature in modo dettagliato con gestione di file come pdf e word

## Importare in Eclipse
- Scaricare il codice sorgente
- Estrarre la cartella
- Rinominare la cartella in `Gestione-Candidature`
- Da eclipse:
> File > Open project from file system > Selezionare la cartella > Finish

## Database Utilizzati
[![Download](https://custom-icon-badges.herokuapp.com/badge/-Download-blue?style=for-the-badge&logo=download&logoColor=white "Download")](https://raw.githubusercontent.com/TreeEmmeDev/Gestione-Candidature/main/candidatura.sql)
[![Download](https://custom-icon-badges.herokuapp.com/badge/-Download-yellow?style=for-the-badge&logo=download&logoColor=white "Download")](https://raw.githubusercontent.com/TreeEmmeDev/Gestione-Candidature/main/candidatura_cestino.sql)

---

## Deploy su Tomcat
- Esportare il progetto come WAR [>> Tasto dx > Esporta > WAR File]
- Aprire il CMD come amministratore
- Spostarsi nella cartella di tomcat `apache-tomcat-VERSIONE` > bin
- Eseguire `service.bat install TAC_Tomcat`

> **Note** Adesso Tomcat sarà installato come servizio sul vostro PC e partirà automaticamente

E' possibile avviare il file *startup.bat* nella cartella bin di tomcat se non si vuole installarlo come servizio (Dovrà quindi essere avviato ogni volta)

- Aprire il file `tomcat-users.xml` nella cartella config per impostare un username ed una password
- Aggiugere la seguente riga: (tra la riga 18 e 56)
```xml
<user username="admin" password="admin" roles="manager-gui"/>
```
- Aprire `http://localhost:8080/manager` ed inserire username e password precedentemente impostati
- Nella sezione **WAR file to deploy**, selezionare il file precedentemente creato e cliccare su **Deploy**

## Cambio Porta Tomcat
Per cambiare la porta è necessario aprire il file `server.xml` situato nella cartella conf e cambiare la porta alla riga **69**

---

## Installer Windows
[![Download](https://custom-icon-badges.herokuapp.com/badge/-Download-red?style=for-the-badge&logo=download&logoColor=white "Download")](https://github.com/TreeEmmeDev/Gestione-Candidature/releases/download/relase/Setup.Candidati.3em.exe)

## WAR File
[![Download](https://custom-icon-badges.herokuapp.com/badge/-Download-green?style=for-the-badge&logo=download&logoColor=white "Download")](https://github.com/TreeEmmeDev/Gestione-Candidature/blob/main/DesktopApp/Gestione-Candidature.war?raw=true)

---
## Team
![GitHub Contributors Image](https://contrib.rocks/image?repo=TreeEmmeDev/Gestione-Candidature)
