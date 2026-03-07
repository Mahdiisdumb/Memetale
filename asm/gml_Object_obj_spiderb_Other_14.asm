.localvar 0 arguments

:[0]
pushi.e -5
pushi.e 59
push.v [array]global.flag
pushi.e 2
mul.i.v
pushi.e -5
pushi.e 383
push.v [array]global.flag
pushi.e 2
mul.i.v
add.v.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]global.goldreward
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.goldreward
pushi.e 999
cmp.i.v GTE
bf [2]

:[1]
pushi.e 999
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.goldreward

:[2]
push.v self.mypart1
conv.v.i
pushenv [4]

:[3]
call.i instance_destroy(argc=0)
popz.v

:[4]
popenv [3]
pushi.e 95
pop.v.i self.con
pushi.e 50
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
pushglb.v global.batmusic
call.i caster_stop(argc=1)
popz.v
call.i scr_monsterdefeat(argc=0)
popz.v
pushi.e 1
pushi.e -5
pushi.e 0
pop.v.i [array]global.monster
call.i instance_destroy(argc=0)
popz.v
pushi.e 360
conv.i.v
pushi.e 230
conv.i.v
pushi.e 660
conv.i.v
call.i instance_create(argc=3)
popz.v

:[end]