.localvar 0 arguments

:[0]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [4]

:[1]
pushi.e 1
pop.v.i global.interact
pushi.e 1280
pushenv [3]

:[2]
pushi.e 1
conv.i.v
call.i event_user(argc=1)
popz.v

:[3]
popenv [2]

:[4]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [6]

:[5]
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 132
conv.i.v
call.i caster_loop(argc=3)
popz.v
pushi.e 3
pop.v.i self.con
pushi.e 50
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
call.i scr_conshakeinit(argc=0)
popz.v

:[6]
push.v self.con
pushi.e 3
cmp.i.v EQ
bf [8]

:[7]
push.v 1280.x
push.d 0.4
sub.d.v
pop.v.v 1280.x
push.v 1281.x
push.d 0.4
add.d.v
pop.v.v 1281.x
pushi.e 1
conv.i.v
call.i scr_conshake(argc=1)
popz.v

:[8]
push.v self.con
pushi.e 4
cmp.i.v EQ
bf [10]

:[9]
call.i scr_conshakeend(argc=0)
popz.v
pushi.e 132
conv.i.v
call.i caster_stop(argc=1)
popz.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 124
conv.i.v
call.i caster_play(argc=3)
popz.v
pushi.e 5
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[10]
push.v self.con
pushi.e 6
cmp.i.v EQ
bf [end]

:[11]
pushglb.v global.currentsong
call.i caster_resume(argc=1)
popz.v
pushbltn.v self.room
pushi.e 148
cmp.i.v EQ
bf [13]

:[12]
pushi.e 133
pop.v.i global.plot

:[13]
pushbltn.v self.room
pushi.e 171
cmp.i.v EQ
bf [15]

:[14]
pushi.e 164
pop.v.i global.plot

:[15]
pushi.e 0
pop.v.i global.interact
call.i instance_destroy(argc=0)
popz.v

:[end]