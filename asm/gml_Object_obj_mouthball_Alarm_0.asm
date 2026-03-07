.localvar 0 arguments

:[0]
pushi.e 1638
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.mb
push.v self.num
pushi.e 1
sub.i.v
push.v self.mb
conv.v.i
pop.v.v [stacktop]self.num
push.v self.id
push.v self.mb
conv.v.i
pop.v.v [stacktop]self.parent
push.v self.size
push.d 0.05
sub.d.v
push.v self.mb
conv.v.i
pop.v.v [stacktop]self.size
push.v self.mb
conv.v.i
push.v [stacktop]self.num
pushi.e 0
cmp.i.v GT
bf [2]

:[1]
pushi.e 1
push.v self.mb
conv.v.i
pushi.e 0
pop.v.i [array]self.alarm

:[2]
pushi.e 1
pop.v.i self.visible

:[end]