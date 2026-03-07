.localvar 0 arguments
.localvar 1 i 492
.localvar 2 itemid 493
.localvar 3 name 494

:[0]
pushi.e 0
pop.v.i local.i

:[1]
pushloc.v local.i
pushi.e 8
cmp.i.v LT
bf [end]

:[2]
pushi.e -5
pushloc.v local.i
conv.v.i
push.v [array]global.item
pop.v.v local.itemid
pushglb.v global.seriousbattle
pushi.e 1
cmp.i.v EQ
bf [4]

:[3]
push.s "item_names_"@3563
pushloc.v local.itemid
call.i string(argc=1)
add.v.s
call.i scr_gettext(argc=1)
pop.v.v local.name
b [5]

:[4]
push.s "item_nameb_"@3564
pushloc.v local.itemid
call.i string(argc=1)
add.v.s
call.i scr_gettext(argc=1)
pop.v.v local.name

:[5]
pushloc.v local.name
pushi.e -5
pushloc.v local.i
conv.v.i
pop.v.v [array]global.itemnameb
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [1]

:[end]