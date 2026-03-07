.localvar 0 arguments

:[0]
push.s "music/deeploop2.ogg"@2710
conv.s.v
call.i caster_load(argc=1)
pop.v.v self.fansfx
pushi.e -5
pushi.e 490
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [5]

:[1]
pushbltn.v self.room
pushi.e 260
cmp.i.v EQ
bf [3]

:[2]
pushi.e 3
conv.i.v
push.d 0.5
conv.d.v
push.v self.fansfx
call.i caster_loop(argc=3)
popz.v

:[3]
pushbltn.v self.room
pushi.e 258
cmp.i.v EQ
bf [5]

:[4]
pushi.e 3
conv.i.v
push.d 0.3
conv.d.v
push.v self.fansfx
call.i caster_loop(argc=3)
popz.v

:[5]
pushbltn.v self.room
pushi.e 260
cmp.i.v EQ
bf [end]

:[6]
pushglb.v global.currentsong
call.i caster_pause(argc=1)
popz.v

:[end]