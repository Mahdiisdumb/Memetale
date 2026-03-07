.localvar 0 arguments

:[0]
push.v 764.x
push.v 764.sprite_width
pushi.e 2
conv.i.d
div.d.v
push.v self.sprite_width
pushi.e 2
conv.i.d
div.d.v
sub.v.v
add.v.v
pop.v.v self.x
push.v 764.y
pushi.e 27
add.i.v
pop.v.v self.y
call.i event_inherited(argc=0)
popz.v

:[end]