.localvar 0 arguments

:[0]
pushi.e 100
pushi.e -5
pushi.e 382
push.v [array]global.flag
pushi.e 2
conv.i.d
div.d.v
call.i round(argc=1)
add.v.i
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
pushi.e -5
pushi.e 59
dup.i 1
push.v [array]global.flag
pushi.e -5
pushi.e 382
push.v [array]global.flag
pushi.e 2
conv.i.d
div.d.v
call.i round(argc=1)
add.v.v
pop.i.v [array]global.flag
push.v self.mypart1
conv.v.i
pushenv [4]

:[3]
call.i instance_destroy(argc=0)
popz.v

:[4]
popenv [3]
pushglb.v global.batmusic
call.i caster_stop(argc=1)
popz.v
pushi.e 1
pushi.e -5
pushi.e 27
pop.v.i [array]global.flag
call.i scr_monsterdefeat(argc=0)
popz.v
pushi.e 0
pushi.e -5
pushi.e 0
pop.v.i [array]global.monster
call.i instance_destroy(argc=0)
popz.v

:[end]