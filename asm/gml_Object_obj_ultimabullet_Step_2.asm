.localvar 0 arguments

:[0]
push.v self.side
pushi.e 0
cmp.i.v EQ
bf [3]

:[1]
push.v self.x
pushi.e 680
cmp.i.v GTE
bf [3]

:[2]
push.v self.trail
conv.v.i
pushi.e 12
push.v [array]self.xprev
pushi.e 640
cmp.i.v GTE
b [4]

:[3]
push.e 0

:[4]
bf [6]

:[5]
call.i instance_destroy(argc=0)
popz.v
b [end]

:[6]
push.v self.side
pushi.e 1
cmp.i.v EQ
bf [9]

:[7]
push.v self.x
pushi.e -40
cmp.i.v LT
bf [9]

:[8]
push.v self.trail
conv.v.i
pushi.e 12
push.v [array]self.xprev
pushi.e 0
cmp.i.v LT
b [10]

:[9]
push.e 0

:[10]
bf [12]

:[11]
call.i instance_destroy(argc=0)
popz.v
b [end]

:[12]
push.v self.x
push.v self.trail
conv.v.i
pop.v.v [stacktop]self.x
push.v self.y
push.v self.trail
conv.v.i
pop.v.v [stacktop]self.y

:[end]