# Movies Management

Movies Management è uno scheletro di applicazione web basata su php vanilla.

## Dettagli Tecnici

- Progetto php 8.1
- Database `movies` 
- phpMyAdmin per la gestione del database

## Setup ambiente

Per poter sviluppare su questo applicativo è necessario disporre di un ambiente con php e mysql funzionante.

Ci sono svariate alternative che si possono utilizzare (spiegate o citate a seguire)


### XAMPP

XAMPP si può utilizzare su tutti i sistemi operativi (Windows, Linux e OS X).
Scaricare la versione del pacchetto corretta dalla [pagina di download di XAMPP](https://www.apachefriends.org/download.html)

1. Installare il pacchetto XAMPP
2. Installare pacchetto composer: [LINK](https://getcomposer.org/download/) indicando php.exe installato da XAMPP - [GUIDA](https://thecodedeveloper.com/install-composer-windows-xampp/) 
3. OPZIONALE:
   1. Creare un cartella <path installazione xampp>/htdpcs/test-intesys.local inserendo il contenuto di questo repository
   2. Modificare il file <path installazione xampp>/apache/conf/extra/httpd-vhosts.conf configurando un server name test-intesys.local che punti al path precedente
   3. Modificare il file hosts di Windows in modo che il dominio test-intesys.local punti a localhost
4. Avviare XAMPP
5. Avviare i servizi Apache e MySql
6. Creare un nuovo DB e importare il file sql che trovi in /var/sql

L'applicativo sarà fruibile all'indirizzo 
`http://localhost/test-intesys.local/` o `http://test-intesys.local/`

phpMyAdmin sarà fruibile all'indirizzo
`http://localhost:8080`

### Docker su Ambiente Windows e WSL 2

Utilizzare su sistema operativo Windows a cui va aggiunto WSL2, una macchina wsl e Docker Desktop
Per configurare l'ambiente si faccia riferimento a [questa guida](https://docs.docker.com/desktop/windows/wsl/)
NB:
1. Si consiglia di installare Ubuntu 20.04
2. Installare Windows Terminal dal Microsoft Store di Windows (utilizzato per accedere alla shell della wsl)

Una volta settato l'ambiente e una volta entrati nella distribuzione linux
1. Clonare il progetto dal repository
2. Spostarsi nella cartella
3. Rendere eseguibili i comandi presenti nella cartella bin
4. Lanciare l'applicativo attraverso il comando bin/start che istanzierà i container necessari all'applicazione

L'applicativo sarà fruibile all'indirizzo
`http://localhost/`

phpMyAdmin sarà fruibile all'indirizzo
`http://localhost:8080`

Per operare all'interno del container php (ad esempio per installare pacchetti con composer) utilizzare il comando `bin/bash` e utilizzare composer all'interno del docker.
Se invece si vuole utilizzare i comandi senza entrare nel container basta utilizzare `bin/cli` o direttamente `bin/composer` (esempio `bin/composer install`)

### Macchina virtuale con LAMP

Non consigliamo di operare in questo modo perché ci vuole molto tempo per il setup, ma se si ha già una macchina virtuale con stack LAMP si può utilizzare.
