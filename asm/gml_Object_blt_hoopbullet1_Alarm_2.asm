.localvar 0 arguments

:[0]
push.v self.sterile
pushi.e 0
cmp.i.v EQ
bf [end]

:[1]
pushi.e 618
conv.i.v
push.v self.ystart
push.v self.xstart
call.i instance_create(argc=3)
pop.v.v self.iii
push.v self.dmg
push.v self.iii
conv.v.i
pop.v.v [stacktop]self.dmg
pushi.e 1
push.v self.iii
conv.v.i
pop.v.i [stacktop]self.bullettype
push.v self.gravitystart
push.v self.iii
conv.v.i
pop.v.v [stacktop]self.gravity
push.v self.gravity_direction
push.v self.iii
conv.v.i
pop.v.v [stacktop]self.gravity_direction
pushi.e 1
push.v self.iii
conv.v.i
pop.v.i [stacktop]self.sterile

:[end]