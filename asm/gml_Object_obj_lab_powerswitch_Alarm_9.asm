.localvar 0 arguments

:[0]
push.d 0.6
push.d 0.3
conv.d.v
call.i random(argc=1)
add.v.d
push.d 0.7
conv.d.v
push.v self.tr
call.i caster_play(argc=3)
popz.v
pushi.e 0
pop.v.i self.i
pushi.e 4
dup.i 0
push.i 0
cmp.i.i LTE
bt [2]

:[1]
push.d -1.5
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.am
conv.v.i
pop.v.d [stacktop]self.vspeed
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [1]

:[2]
popz.i
pushi.e 15
pushi.e -1
pushi.e 10
pop.v.i [array]self.alarm

:[end]