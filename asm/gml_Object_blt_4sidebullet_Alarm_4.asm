.localvar 0 arguments

:[0]
push.v self.l
pushi.e 1
add.i.v
pop.v.v self.l
push.v self.object_index
push.v self.ystart
push.v self.xstart
call.i instance_create(argc=3)
pop.v.v self.thisbullet
push.v self.thisbullet
call.i instance_exists(argc=1)
conv.v.b
bf [2]

:[1]
push.v self.startdir
push.v self.thisbullet
conv.v.i
pop.v.v [stacktop]self.startdir
push.v self.startspeed
push.v self.thisbullet
conv.v.i
pop.v.v [stacktop]self.startspeed
push.v self.rotdir
push.v self.thisbullet
conv.v.i
pop.v.v [stacktop]self.rotdir
push.v self.dmg
push.v self.thisbullet
conv.v.i
pop.v.v [stacktop]self.dmg

:[2]
push.v self.l
push.v self.limit
cmp.v.v LT
bf [end]

:[3]
pushi.e 26
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[end]