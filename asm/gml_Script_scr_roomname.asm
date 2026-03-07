.localvar 0 arguments
.localvar 1 roomid 353
.localvar 2 roomname 354

:[0]
pushbltn.v self.argument0
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
push.s "roomname_0"@3342
conv.s.v
call.i scr_gettext(argc=1)
ret.v

:[2]
pushbltn.v self.argument0
call.i room_get_name(argc=1)
pop.v.v local.roomid
pushi.e 5
conv.i.v
pushi.e 1
conv.i.v
pushloc.v local.roomid
call.i substr(argc=3)
push.s "room_"@3345
cmp.s.v EQ
bf [5]

:[3]
push.s "roomname_"@3346
pushi.e 6
conv.i.v
pushloc.v local.roomid
call.i substr(argc=2)
add.v.s
call.i scr_gettext(argc=1)
pop.v.v local.roomname
pushloc.v local.roomname
push.s ""@36
cmp.s.v NEQ
bf [5]

:[4]
pushloc.v local.roomname
ret.v

:[5]
push.s " "@18
conv.s.v
ret.v

:[end]