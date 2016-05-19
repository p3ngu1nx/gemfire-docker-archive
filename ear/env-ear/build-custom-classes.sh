#rm -r server/custom-classes
#mkdir -p server/custom-classes/com/gemstone/gemfire/management/internal/cli

#rm -r server/bin/gemfire
#mkdir server/bin/gemfire
#unzip server/bin/gemfire_original.jar -d server/bin/gemfire

# cp /bk/Dev/gemfire/incubator-geode/gemfire-core/build/classes/main/com/gemstone/gemfire/distributed/ServerLauncher.class server/bin/gemfire/com/gemstone/gemfire/distributed
# cp '/bk/Dev/gemfire/incubator-geode/gemfire-core/build/classes/main/com/gemstone/gemfire/distributed/ServerLauncher$1.class' server/bin/gemfire/com/gemstone/gemfire/distributed
# cp '/bk/Dev/gemfire/incubator-geode/gemfire-core/build/classes/main/com/gemstone/gemfire/distributed/ServerLauncher$2.class' server/bin/gemfire/com/gemstone/gemfire/distributed
# cp '/bk/Dev/gemfire/incubator-geode/gemfire-core/build/classes/main/com/gemstone/gemfire/distributed/ServerLauncher$3.class' server/bin/gemfire/com/gemstone/gemfire/distributed
# cp '/bk/Dev/gemfire/incubator-geode/gemfire-core/build/classes/main/com/gemstone/gemfire/distributed/ServerLauncher$Builder.class' server/bin/gemfire/com/gemstone/gemfire/distributed
# cp '/bk/Dev/gemfire/incubator-geode/gemfire-core/build/classes/main/com/gemstone/gemfire/distributed/ServerLauncher$Command.class' server/bin/gemfire/com/gemstone/gemfire/distributed
# cp '/bk/Dev/gemfire/incubator-geode/gemfire-core/build/classes/main/com/gemstone/gemfire/distributed/ServerLauncher$ServerControllerParameters.class' server/bin/gemfire/com/gemstone/gemfire/distributed
# cp '/bk/Dev/gemfire/incubator-geode/gemfire-core/build/classes/main/com/gemstone/gemfire/distributed/ServerLauncher$ServerState.class' server/bin/gemfire/com/gemstone/gemfire/distributed

#yes | cp /bk/Dev/gemfire/incubator-geode/gemfire-core/build/classes/main/com/gemstone/gemfire/management/internal/cli/Launcher.class server/bin/gemfire/com/gemstone/gemfire/management/internal/cli
#yes | cp '/bk/Dev/gemfire/incubator-geode/gemfire-core/build/classes/main/com/gemstone/gemfire/management/internal/cli/Launcher$1.class' server/bin/gemfire/com/gemstone/gemfire/management/internal/cli
#yes | cp '/bk/Dev/gemfire/incubator-geode/gemfire-core/build/classes/main/com/gemstone/gemfire/management/internal/cli/Launcher$StartupTimeLogHelper.class' server/bin/gemfire/com/gemstone/gemfire/management/internal/cli


#rm server/gemfire.jar
#zip -r server/gemfire.jar server/bin/gemfire

#----------------------------------

# rm -r server/bin/com/
# mkdir -p server/bin/com/gemstone/gemfire/management/internal/cli
# 
# yes | cp '/bk/Dev/gemfire/incubator-geode/gemfire-core/build/classes/main/com/gemstone/gemfire/management/internal/cli/Launcher.class' server/bin/com/gemstone/gemfire/management/internal/cli/
# yes | cp '/bk/Dev/gemfire/incubator-geode/gemfire-core/build/classes/main/com/gemstone/gemfire/management/internal/cli/Launcher$1.class' server/bin/com/gemstone/gemfire/management/internal/cli/
# yes | cp '/bk/Dev/gemfire/incubator-geode/gemfire-core/build/classes/main/com/gemstone/gemfire/management/internal/cli/Launcher$StartupTimeLogHelper.class' server/bin/com/gemstone/gemfire/management/internal/cli/
# 
# 
# jar uf myJar com\test\MyClass$MySubclass.class
# 
# yes | cp server/bin/gemfire_original.jar server/bin/gemfire.jar
# 
# cd server/bin/
# jar uf gemfire.jar 'com/gemstone/gemfire/management/internal/cli/Launcher.class'
# jar uf gemfire.jar 'com/gemstone/gemfire/management/internal/cli/Launcher$1.class'
# jar uf gemfire.jar 'com/gemstone/gemfire/management/internal/cli/Launcher$StartupTimeLogHelper.class'
# cd ../..

#----------------------------------

#com/gemstone/gemfire/internal/cache

rm -r server/bin/com/
mkdir -p server/bin/com/gemstone/gemfire/internal/cache

rsync -rv --include '/' --include 'Oplog.class' --exclude '*' --prune-empty-dirs ~/Dev/gemfire-dev/build-artifacts/linux/classes/com/gemstone/gemfire/internal/cache/ server/bin/com/gemstone/gemfire/internal/cache/
rsync -rv --include '/' --include 'Oplog$*.class' --exclude '*' --prune-empty-dirs ~/Dev/gemfire-dev/build-artifacts/linux/classes/com/gemstone/gemfire/internal/cache/ server/bin/com/gemstone/gemfire/internal/cache/

#rsync -rv --include '/' --include 'DiskEntry.class' --exclude '*' --prune-empty-dirs ~/Dev/gemfire-dev/build-artifacts/linux/classes/com/gemstone/gemfire/internal/cache/ server/bin/com/gemstone/gemfire/internal/cache/
#rsync -rv --include '/' --include 'DiskEntry$*.class' --exclude '*' --prune-empty-dirs ~/Dev/gemfire-dev/build-artifacts/linux/classes/com/gemstone/gemfire/internal/cache/ server/bin/com/gemstone/gemfire/internal/cache/


yes | cp server/bin/gemfire_original.jar server/bin/gemfire.jar

cd server/bin/

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

cd ../..

