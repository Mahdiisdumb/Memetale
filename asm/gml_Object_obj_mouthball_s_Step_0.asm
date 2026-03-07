.localvar 0 arguments

:[0]
push.v self.nowsize
push.v self.size
cmp.v.v LT
bf [2]

:[1]
push.v self.nowsize
push.d 0.1
add.d.v
pop.v.v self.nowsize

:[2]
push.v self.nowsize
push.v self.size
cmp.v.v GT
bf [4]

:[3]
push.v self.size
pop.v.v self.nowsize

:[4]
push.v self.nowsize
push.v self.siner
pushi.e 6
conv.i.d
div.d.v
call.i sin(argc=1)
push.d 0.1
mul.d.v
add.v.v
pop.v.v self.image_xscale
push.v self.nowsize
push.v self.siner
pushi.e 6
conv.i.d
div.d.v
call.i sin(argc=1)
push.d 0.1
mul.d.v
add.v.v
pop.v.v self.image_yscale
push.v self.dont
pushi.e 0
cmp.i.v EQ
bf [6]

:[5]
push.v self.xprev3
pop.v.v self.xprev4
push.v self.yprev3
pop.v.v self.yprev4
push.v self.xprev2
pop.v.v self.xprev3
push.v self.yprev2
pop.v.v self.yprev3
push.v self.xprevious
pop.v.v self.xprev2
push.v self.yprevious
pop.v.v self.yprev2
push.v self.parent
conv.v.i
push.v [stacktop]self.xprev4
pop.v.v self.x
push.v self.parent
conv.v.i
push.v [stacktop]self.yprev4
pop.v.v self.y

:[6]
push.v self.dont
pushi.e 1
cmp.i.v EQ
bf [8]

:[7]
call.i instance_destroy(argc=0)
popz.v

:[8]
push.v self.siner
pushi.e 1
add.i.v
pop.v.v self.siner

:[end]