.localvar 0 arguments

:[0]
pushi.e 30
pushi.e -1
pushi.e 10
pop.v.i [array]self.alarm
pushi.e 0
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.hurtanim
push.v self.mypart1
conv.v.i
pushenv [2]

:[1]
call.i instance_destroy(argc=0)
popz.v

:[2]
popenv [1]
pushi.e 0
pop.v.i self.visible
pushi.e 230
conv.i.v
push.v self.y
push.v self.x
pushi.e 41
add.i.v
call.i instance_create(argc=3)
pop.v.v self.dh
pushi.e 231
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.db
pushglb.v global.batmusic
call.i caster_free(argc=1)
popz.v
pushglb.v global.batmusic2
call.i caster_free(argc=1)
popz.v

:[end]