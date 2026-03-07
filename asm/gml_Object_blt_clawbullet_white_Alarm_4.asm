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
push.v self.l
push.v self.limit
cmp.v.v LT
bf [end]

:[1]
pushi.e 6
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[end]