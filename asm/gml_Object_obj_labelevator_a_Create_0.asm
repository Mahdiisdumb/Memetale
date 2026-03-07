.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.hshake
pushi.e 0
pop.v.i self.vshake
pushi.e 2
pop.v.i self.con
pushi.e 0
pop.v.i self.redsiner
pushi.e 0
pop.v.i self.dt
pushi.e 0
pop.v.i self.w
pushi.e 3
pop.v.i self.shakevalue
pushi.e 0
pop.v.i self.rs_speed
pushi.e 0
pop.v.i self.blacktime
pushi.e 0
pop.v.i self.sfxtimer
push.s "music/f_destroyed3.ogg"@2761
conv.s.v
call.i caster_load(argc=1)
pop.v.v self.sfx
push.s "music/explosion.ogg"@2722
conv.s.v
call.i caster_load(argc=1)
pop.v.v self.expl
push.d 1.4
conv.d.v
push.d 0.8
conv.d.v
push.v self.sfx
call.i caster_loop(argc=3)
popz.v
push.d 1.4
pop.v.d self.pit
push.d 0.8
pop.v.d self.vol
pushi.e 0
pop.v.i self.hyperboys
pushbltn.v self.room
pushi.e 261
cmp.i.v EQ
bf [end]

:[1]
pushi.e 1
pop.v.i self.hyperboys

:[end]