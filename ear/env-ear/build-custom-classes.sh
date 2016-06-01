#!/bin/sh

rm -r server/bin/com/
mkdir -p server/bin/com/gemstone/gemfire/internal/cache

rm -r server/lib/
mkdir -p server/lib/

rsync -rv --include '/' --include '*.jar' --exclude '*' --prune-empty-dirs ~/Dev/gemfire-dev/build-artifacts/*/product/lib/ server/lib/
rsync -rv --include '/' --include 'Oplog.class' --exclude '*' --prune-empty-dirs ~/Dev/gemfire-dev/build-artifacts/*/classes/com/gemstone/gemfire/internal/cache/ server/bin/com/gemstone/gemfire/internal/cache/
rsync -rv --include '/' --include 'Oplog$*.class' --exclude '*' --prune-empty-dirs ~/Dev/gemfire-dev/build-artifacts/*/classes/com/gemstone/gemfire/internal/cache/ server/bin/com/gemstone/gemfire/internal/cache/
rsync -rv --include '/' --include 'UninterruptibleRandomAccessFile$*.class' --exclude '*' --prune-empty-dirs ~/Dev/gemfire-dev/build-artifacts/*/classes/com/gemstone/gemfire/internal/cache/persistence/ server/bin/com/gemstone/gemfire/internal/cache/persistence/

#rsync -rv --include '/' --include 'DiskEntry.class' --exclude '*' --prune-empty-dirs ~/Dev/gemfire-dev/build-artifacts/*/classes/com/gemstone/gemfire/internal/cache/ server/bin/com/gemstone/gemfire/internal/cache/
#rsync -rv --include '/' --include 'DiskEntry$*.class' --exclude '*' --prune-empty-dirs ~/Dev/gemfire-dev/build-artifacts/*/classes/com/gemstone/gemfire/internal/cache/ server/bin/com/gemstone/gemfire/internal/cache/


yes | cp server/original/gemfire_original.jar server/bin/gemfire.jar

cp ~/Dev/CBA_EaR/encryption/target/encryption-1.0.0.beta1.jar server/lib/encryption.jar
ls -l server/lib/encryption.jar

cd server/bin/

echo Rebuilding jars ... please wait ...

# jar uf gemfire.jar 'com/gemstone/gemfire/internal/cache/Oplog$1.class'
# jar uf gemfire.jar 'com/gemstone/gemfire/internal/cache/Oplog$2.class'
# jar uf gemfire.jar 'com/gemstone/gemfire/internal/cache/Oplog$3.class'
# jar uf gemfire.jar 'com/gemstone/gemfire/internal/cache/Oplog$4.class'
# jar uf gemfire.jar 'com/gemstone/gemfire/internal/cache/Oplog$5.class'
# jar uf gemfire.jar 'com/gemstone/gemfire/internal/cache/Oplog$6.class'
# jar uf gemfire.jar 'com/gemstone/gemfire/internal/cache/Oplog$7.class'
# jar uf gemfire.jar 'com/gemstone/gemfire/internal/cache/Oplog$AbstractDiskRegionInfo.class'
# jar uf gemfire.jar 'com/gemstone/gemfire/internal/cache/Oplog$CompactionRecord.class'
# jar uf gemfire.jar 'com/gemstone/gemfire/internal/cache/Oplog$DiskRegionInfo.class'
# jar uf gemfire.jar 'com/gemstone/gemfire/internal/cache/Oplog$DiskRegionInfoNoList.class'
# jar uf gemfire.jar 'com/gemstone/gemfire/internal/cache/Oplog$DiskRegionInfoWithList.class'
# jar uf gemfire.jar 'com/gemstone/gemfire/internal/cache/Oplog$KRFEntry.class'
# jar uf gemfire.jar 'com/gemstone/gemfire/internal/cache/Oplog$KRFile.class'
# jar uf gemfire.jar 'com/gemstone/gemfire/internal/cache/Oplog$OkToSkipResult.class'
# jar uf gemfire.jar 'com/gemstone/gemfire/internal/cache/Oplog$OPLOG_TYPE.class'
# jar uf gemfire.jar 'com/gemstone/gemfire/internal/cache/Oplog$OplogDiskEntry.class'
# jar uf gemfire.jar 'com/gemstone/gemfire/internal/cache/Oplog$OplogEntryIdMap$Iterator.class'
# jar uf gemfire.jar 'com/gemstone/gemfire/internal/cache/Oplog$OplogEntryIdMap.class'
# jar uf gemfire.jar 'com/gemstone/gemfire/internal/cache/Oplog$OplogFile.class'
# jar uf gemfire.jar 'com/gemstone/gemfire/internal/cache/Oplog$OplogFileType.class'
# jar uf gemfire.jar 'com/gemstone/gemfire/internal/cache/Oplog$OpState.class'
# jar uf gemfire.jar 'com/gemstone/gemfire/internal/cache/Oplog$RawByteKey.class'
jar uf gemfire.jar 'com/gemstone/gemfire/internal/cache/Oplog.class'

# jar uf gemfire.jar 'com/gemstone/gemfire/internal/cache/DiskEntry$Helper$ByteArrayValueWrapper.class'
# jar uf gemfire.jar 'com/gemstone/gemfire/internal/cache/DiskEntry$Helper$ChunkValueWrapper.class'
# jar uf gemfire.jar 'com/gemstone/gemfire/internal/cache/DiskEntry$Helper$CompactorValueWrapper.class'
# jar uf gemfire.jar 'com/gemstone/gemfire/internal/cache/DiskEntry$Helper$Flushable.class'
# jar uf gemfire.jar 'com/gemstone/gemfire/internal/cache/DiskEntry$Helper$ValueWrapper.class'
# jar uf gemfire.jar 'com/gemstone/gemfire/internal/cache/DiskEntry$Helper.class'
# jar uf gemfire.jar 'com/gemstone/gemfire/internal/cache/DiskEntry$RecoveredEntry.class'
# jar uf gemfire.jar 'com/gemstone/gemfire/internal/cache/DiskEntry.class'

jar uf gemfire.jar 'com/gemstone/gemfire/internal/cache/persistence/UninterruptibleRandomAccessFile$1.class'
jar uf gemfire.jar 'com/gemstone/gemfire/internal/cache/persistence/UninterruptibleRandomAccessFile$FileOperation.class'
jar uf gemfire.jar 'com/gemstone/gemfire/internal/cache/persistence/UninterruptibleRandomAccessFile$UninterruptibleFileChannelImpl$1.class'
jar uf gemfire.jar 'com/gemstone/gemfire/internal/cache/persistence/UninterruptibleRandomAccessFile$UninterruptibleFileChannelImpl$10.class'
jar uf gemfire.jar 'com/gemstone/gemfire/internal/cache/persistence/UninterruptibleRandomAccessFile$UninterruptibleFileChannelImpl$11.class'
jar uf gemfire.jar 'com/gemstone/gemfire/internal/cache/persistence/UninterruptibleRandomAccessFile$UninterruptibleFileChannelImpl$2.class'
jar uf gemfire.jar 'com/gemstone/gemfire/internal/cache/persistence/UninterruptibleRandomAccessFile$UninterruptibleFileChannelImpl$3.class'
jar uf gemfire.jar 'com/gemstone/gemfire/internal/cache/persistence/UninterruptibleRandomAccessFile$UninterruptibleFileChannelImpl$4.class'
jar uf gemfire.jar 'com/gemstone/gemfire/internal/cache/persistence/UninterruptibleRandomAccessFile$UninterruptibleFileChannelImpl$5.class'
jar uf gemfire.jar 'com/gemstone/gemfire/internal/cache/persistence/UninterruptibleRandomAccessFile$UninterruptibleFileChannelImpl$6.class'
jar uf gemfire.jar 'com/gemstone/gemfire/internal/cache/persistence/UninterruptibleRandomAccessFile$UninterruptibleFileChannelImpl$7.class'
jar uf gemfire.jar 'com/gemstone/gemfire/internal/cache/persistence/UninterruptibleRandomAccessFile$UninterruptibleFileChannelImpl$8.class'
jar uf gemfire.jar 'com/gemstone/gemfire/internal/cache/persistence/UninterruptibleRandomAccessFile$UninterruptibleFileChannelImpl$9.class'
jar uf gemfire.jar 'com/gemstone/gemfire/internal/cache/persistence/UninterruptibleRandomAccessFile$UninterruptibleFileChannelImpl.class'
cd ../..

