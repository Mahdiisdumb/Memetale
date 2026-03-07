.localvar 0 arguments

:[0]
push.v self.x
push.v self.sprite_width
add.v.v
pushi.e 6
sub.i.v
push.v self.mychip
conv.v.i
pop.v.v [stacktop]self.x

:[end]