# dtest

Podařilo se mi vyrobit fungujici dockerizaci Django projektu.


Spousti se to takto: 


`git clone https://github.com/SYSNET-CZ/dtest.git`

`cd  dtest`

`docker build -t dtest .`

`docker run --name dtest -p 8000:8000 -v ./data:/var/www/dtest/data -d dtest:latest`

Jak je vidět, data jsou **mimo kontejner**. 
