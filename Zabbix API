#!/usr/bin/env python3
from pyzabbix import ZabbixAPI
zapi = ZabbixAPI(server="URL-API-ZABBIX")
zapi.login("USER","SENHA")
hosts = zapi.host.get(
    output=['host', 'status'],
    selectHostGroups=['name'],
    selectParentTemplates=['host','name'],
    selectInterfaces=['ip', 'type'],
    filter={'status':['0']
    }
)
for h in hosts:
    print (h['host'])
