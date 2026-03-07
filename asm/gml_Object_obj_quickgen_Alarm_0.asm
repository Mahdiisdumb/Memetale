.localvar 0 arguments

:[0]
pushi.e 675
conv.i.v
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e 80
sub.i.v
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e 10
add.i.v
pushi.e 0
conv.i.v
call.i c_borderwidth(argc=1)
pushi.e 10
sub.i.v
call.i random(argc=1)
add.v.v
call.i instance_create(argc=3)
pop.v.v self.blt
pushi.e 20
conv.i.v
call.i snd_play(argc=1)
popz.v
push.v self.dmg
push.v self.blt
conv.v.i
pop.v.v [stacktop]self.dmg
push.v self.firingspeed
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm

:[end]