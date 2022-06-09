tp @s ~ ~ ~ ~ ~

function yossan:widget/show/body4
function yossan:widget/show/body4
function yossan:widget/show/body4
function yossan:widget/show/body4
function yossan:widget/show/body4
function yossan:widget/show/body4
function yossan:widget/show/body4
function yossan:widget/show/body4
function yossan:widget/show/body4

kill @e[type=item,tag=flag1,nbt={Item:{id:"minecraft:stone",Count:1b}}]

execute as @e[type=item,tag=flag1] run data modify entity @s CustomName set from entity @s Item.tag.display.Name

execute as @e[type=item,tag=flag1] run data merge entity @s {Tags:["widget","flag1"],NoGravity:1b,Silent:1b,Glowing:1b,Age:-32768,PickupDelay:32767}