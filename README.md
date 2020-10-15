# Zabbix-MongoDB 
(Based on https://github.com/denisgolius/zabbix-mongodb)

It works with MongoDB 4.0+

# A Zabbix plugin for monitoring MongoDB.

# Installation
1. Import the mongodb template to zabbix and link it to the zabbix mongodb host.
2. Install zabbix-sender `sudo apt-get install zabbix-sender -y`
3. Install pymongo `sudo pip3 install pymongo`
3. One script
    ```
    curl -fsSL https://raw.githubusercontent.com/qwzhou89/zabbix-mongodb/master/install.sh | sudo bash -
    ```

**Server Stats**
- mongodb.ismaster
- mongodb.version
- mongodb.storageEngine
- mongodb.uptime
- mongodb.okstatus
- mongodb.asserts.msg
- mongodb.asserts.rollovers
- mongodb.asserts.regular
- mongodb.asserts.warning
- mongodb.asserts.user
- mongodb.backgroundFlushing.flushes
- mongodb.backgroundFlushing.total_ms
- mongodb.operation.getmore
- mongodb.operation.insert
- mongodb.operation.update
- mongodb.operation.command
- mongodb.operation.query
- mongodb.operation.delete
- mongodb.memory.resident
- mongodb.memory.virtual
- mongodb.memory.mapped
- mongodb.memory.mappedWithJournal
- mongodb.connection.current
- mongodb.connection.available
- mongodb.connection.totalCreated
- mongodb.network.numRequests
- mongodb.network.bytesOut
- mongodb.network.bytesIn
- mongodb.heap.size
- mongodb.page.faults
- mongodb.globalLock.totalTime
- mongodb.globalLock.currentQueue.total
- mongodb.globalLock.currentQueue.writers
- mongodb.globalLock.currentQueue.readers
- mongodb.globalLock.activeClients.total
- mongodb.globalLock.activeClients.writers
- mongodb.globalLock.activeClients.readers

**DB Stats**
- mongodb.stats.storageSize[db]
- mongodb.stats.ok[db]
- mongodb.stats.avgObjSize[db]
- mongodb.stats.indexes[db]
- mongodb.stats.objects[db]
- mongodb.stats.collections[db]
- mongodb.stats.fileSize[db]
- mongodb.stats.numExtents[db]
- mongodb.stats.dataSize[db]
- mongodb.stats.indexSize[db]
- mongodb.stats.nsSizeMB[db]

# License
[MIT](/LICENSE.md)
