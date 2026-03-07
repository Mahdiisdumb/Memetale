.localvar 0 arguments

:[0]
push.v self.x
push.v self.dirr
pushi.e 140
conv.i.v
call.i lengthdir_x(argc=2)
add.v.v
pop.v.v self.x
push.v self.y
push.v self.dirr
pushi.e 70
conv.i.v
call.i lengthdir_y(argc=2)
add.v.v
pop.v.v self.y
pushi.e 1
pop.v.i self.visible
pushi.e 1
pop.v.i self.active

:[end]