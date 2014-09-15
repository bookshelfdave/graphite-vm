graphite-vm
===========

## Installation

```
vagrant up
```


## Forwarded ports:

```
config.vm.network "forwarded_port", guest: 80, host: 18080
config.vm.network "forwarded_port", guest: 2003, host: 12003
config.vm.network "forwarded_port", guest: 2004, host: 12004
config.vm.network "forwarded_port", guest: 2005, host: 12005
```
