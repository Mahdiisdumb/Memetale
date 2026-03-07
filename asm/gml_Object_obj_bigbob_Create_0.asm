.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.i
pushi.e 8
dup.i 0
push.i 0
cmp.i.i LTE
bt [2]

:[1]
pushi.e 428
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.bobkid
pushi.e 360
conv.i.v
call.i degtorad(argc=1)
pushi.e 2
conv.i.d
div.d.v
push.v self.i
mul.v.v
push.v self.bobkid
conv.v.i
pop.v.v [stacktop]self.siner
push.v self.id
push.v self.bobkid
conv.v.i
pop.v.v [stacktop]self.parent
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [1]

:[2]
popz.i
pushi.e 1
pop.v.i self.vspeed

:[end]