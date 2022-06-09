####キャッシュの初期化

data remove block ~ ~ ~ Items.[{Slot:0b}]

data modify block ~ ~ ~ Items.[{Slot:0b}] merge value {Count:1b,Slot:0b,id:"minecraft:bedrock",tag:{display:{Lore:['{"text":"基本的に触らないでください"}'],Name:'{"text":"キャッシュ","bold":true}'},EntityNBT:{DeathLootTable:"empty",PersistenceRequired:1b,CanPickUpLoot:0b,IsBaby:0b,ArmorItems:[{id:"minecraft:stone",Count:1b},{},{},{}],HandItems:[{},{}]}}}


####装備

data modify block ~ ~ ~ Items.[{Slot:0b}].tag.EntityNBT.ArmorItems.[0] merge from block ~ ~ ~ Items.[{Slot:18b}]
data modify block ~ ~ ~ Items.[{Slot:0b}].tag.EntityNBT.ArmorItems.[1] merge from block ~ ~ ~ Items.[{Slot:19b}]
data modify block ~ ~ ~ Items.[{Slot:0b}].tag.EntityNBT.ArmorItems.[2] merge from block ~ ~ ~ Items.[{Slot:20b}]
data modify block ~ ~ ~ Items.[{Slot:0b}].tag.EntityNBT.ArmorItems.[3] merge from block ~ ~ ~ Items.[{Slot:21b}]
data modify block ~ ~ ~ Items.[{Slot:0b}].tag.EntityNBT.HandItems.[0] merge from block ~ ~ ~ Items.[{Slot:22b}]
data modify block ~ ~ ~ Items.[{Slot:0b}].tag.EntityNBT.HandItems.[1] merge from block ~ ~ ~ Items.[{Slot:23b}]

data remove block ~ ~ ~ Items.[{Slot:0b}].tag.EntityNBT.ArmorItems.[{Slot:18b}].Slot
data remove block ~ ~ ~ Items.[{Slot:0b}].tag.EntityNBT.ArmorItems.[{Slot:19b}].Slot
data remove block ~ ~ ~ Items.[{Slot:0b}].tag.EntityNBT.ArmorItems.[{Slot:20b}].Slot
data remove block ~ ~ ~ Items.[{Slot:0b}].tag.EntityNBT.ArmorItems.[{Slot:21b}].Slot
data remove block ~ ~ ~ Items.[{Slot:0b}].tag.EntityNBT.ArmorItems.[{Slot:22b}].Slot
data remove block ~ ~ ~ Items.[{Slot:0b}].tag.EntityNBT.ArmorItems.[{Slot:23b}].Slot

data modify block ~ ~ ~ Items.[{Slot:0b}].tag.EntityNBT.ArmorItems.[0].tag merge value {Unbreakable:1b}
data modify block ~ ~ ~ Items.[{Slot:0b}].tag.EntityNBT.ArmorItems.[1].tag merge value {Unbreakable:1b}
data modify block ~ ~ ~ Items.[{Slot:0b}].tag.EntityNBT.ArmorItems.[2].tag merge value {Unbreakable:1b}
data modify block ~ ~ ~ Items.[{Slot:0b}].tag.EntityNBT.ArmorItems.[3].tag merge value {Unbreakable:1b}
data modify block ~ ~ ~ Items.[{Slot:0b}].tag.EntityNBT.HandItems.[0].tag merge value {Unbreakable:1b}
data modify block ~ ~ ~ Items.[{Slot:0b}].tag.EntityNBT.HandItems.[1].tag merge value {Unbreakable:1b}


####mobの設定

#ドロップアイテム
data modify block ~ ~ ~ Items.[{Slot:0b}].tag.EntityNBT.ArmorItems.[0].tag.Command merge from block ~ ~ ~ Items.[{Slot:9b}].tag.Command

#名前
data modify block ~ ~ ~ Items.[{Slot:0b}].tag.EntityNBT.CustomName set from block ~ ~ ~ Items.[{Slot:10b}].tag.display.Name

#エンティティタイプ
data modify block ~ ~ ~ Items.[{Slot:0b}].tag.EntityNBT.ArmorItems.[0].tag.Command.MobStates.type merge from block ~ ~ ~ Items.[{Slot:11b}].id

#Mobのステータス
data modify block ~ ~ ~ Items.[{Slot:0b}].tag.EntityNBT.ArmorItems.[0].tag.Command merge from block ~ ~ ~ Items.[{Slot:12b}].tag.Command

#全mob共通
data modify block ~ ~ ~ Items.[{Slot:0b}].tag.EntityNBT merge value {ArmorDropChances:[1.000F,0.000F,0.000F,0.000F],HandDropChances:[0.000F,0.000F],Attributes:[{Name:generic.follow_range,Base:8}]}