.localvar 0 arguments

:[0]
pushi.e 7
pop.v.i self.dmg
push.v 744.x
push.v 744.xprevious
sub.v.v
pushi.e 30
mul.i.v
pop.v.v self.xx
push.v 744.y
push.v 744.yprevious
sub.v.v
pushi.e 30
mul.i.v
pop.v.v self.yy
pushi.e 7
conv.i.v
push.v 744.y
push.v self.yy
add.v.v
push.v 744.x
push.v self.xx
add.v.v
pushi.e 8
sub.i.v
call.i move_towards_point(argc=3)
popz.v
push.v self.sprite_index
call.i scr_getsprite(argc=1)
pop.v.v self.sprite_index

:[end]