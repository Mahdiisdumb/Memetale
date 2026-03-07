.localvar 0 arguments

:[0]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
pushglb.v global.currentsong
call.i caster_pause(argc=1)
popz.v
pushi.e 1934
push.v self.bunny
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 1939
push.v self.dragon
conv.v.i
pop.v.i [stacktop]self.sprite_index
push.d 0.1
pop.v.d self.con
pushi.e 40
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[2]
push.v self.con
push.d 1.1
cmp.d.v EQ
bf [4]

:[3]
pushi.e 0
pop.v.i global.msc
push.s "obj_killerboysnightout_event_101"@14682
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_killerboysnightout_event_102"@14684
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_killerboysnightout_event_103"@14686
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
call.i scr_regulartext(argc=0)
popz.v
pushi.e 2
pop.v.i self.con

:[4]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [6]

:[5]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [7]

:[6]
push.e 0

:[7]
bf [9]

:[8]
pushi.e 49
pop.v.i global.battlegroup
pushi.e 1
pop.v.i global.mercy
pushi.e 143
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 3
pop.v.i self.con
pushi.e 33
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[9]
push.v self.con
pushi.e 4
cmp.i.v EQ
bf [end]

:[10]
pushi.e 0
pop.v.i global.mercy
pushi.e 0
pop.v.i global.interact
pushglb.v global.currentsong
call.i caster_resume(argc=1)
popz.v
pushi.e -5
pushi.e 12
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [12]

:[11]
pushi.e 1
pushi.e -5
pushi.e 402
pop.v.i [array]global.flag

:[12]
pushi.e 17
pop.v.i self.con
pushi.e 164
pop.v.i global.plot
pushi.e 1365
pushenv [14]

:[13]
call.i instance_destroy(argc=0)
popz.v

:[14]
popenv [13]
call.i instance_destroy(argc=0)
popz.v

:[end]