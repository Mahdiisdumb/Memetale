.localvar 0 arguments

:[0]
push.v 1575.left
conv.v.b
bf [2]

:[1]
push.v self.dongusvol
push.d 0.02
sub.d.v
pop.v.v self.dongusvol
push.v self.dongusvol
push.v self.dangus
call.i caster_set_volume(argc=2)
popz.v
push.v self.dongusvol
pushi.e 1
sub.i.v
push.v self.dongus
call.i caster_set_volume(argc=2)
popz.v
push.v self.dongusvol
pushi.e 2
sub.i.v
push.v self.dungus
call.i caster_set_volume(argc=2)
popz.v

:[2]
push.v 1575.right
conv.v.b
bf [end]

:[3]
push.v self.dongusvol
push.d 0.02
add.d.v
pop.v.v self.dongusvol
push.v self.dongusvol
push.v self.dangus
call.i caster_set_volume(argc=2)
popz.v
push.v self.dongusvol
pushi.e 1
sub.i.v
push.v self.dongus
call.i caster_set_volume(argc=2)
popz.v
push.v self.dongusvol
pushi.e 2
sub.i.v
push.v self.dungus
call.i caster_set_volume(argc=2)
popz.v

:[end]