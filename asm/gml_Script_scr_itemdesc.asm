.localvar 0 arguments
.localvar 1 i 469
.localvar 2 desc 470

:[0]
push.s "scr_itemdesc_2"@3476
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 0
pop.v.i local.i

:[1]
pushi.e 1
conv.i.b
bf [end]

:[2]
push.s "item_desc_"@3477
pushbltn.v self.argument0
call.i string(argc=1)
add.v.s
push.s "_"@3478
add.s.v
pushloc.v local.i
call.i string(argc=1)
add.v.v
call.i scr_gettext(argc=1)
pop.v.v local.desc
pushloc.v local.desc
call.i string_length(argc=1)
pushi.e 0
cmp.i.v EQ
bf [4]

:[3]
b [end]

:[4]
pushloc.v local.desc
pushi.e -5
pushloc.v local.i
conv.v.i
pop.v.v [array]global.msg
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [1]

:[end]