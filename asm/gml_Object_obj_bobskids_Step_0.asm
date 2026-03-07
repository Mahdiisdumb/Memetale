.localvar 0 arguments

:[0]
push.v self.parent
conv.v.i
push.v [stacktop]self.x
push.v self.siner
pushi.e 4
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 60
push.v self.outer
add.v.i
mul.v.v
add.v.v
pop.v.v self.x
push.v self.parent
conv.v.i
push.v [stacktop]self.y
push.v self.siner
pushi.e 4
conv.i.d
div.d.v
call.i cos(argc=1)
pushi.e 60
push.v self.outer
add.v.i
mul.v.v
add.v.v
pop.v.v self.y
push.v self.siner4
pushi.e 1
add.i.v
pop.v.v self.siner4
push.v self.siner
push.v self.siner4
pushi.e 12
conv.i.d
div.d.v
call.i sin(argc=1)
push.d 1.5
add.d.v
pushi.e 5
conv.i.d
div.d.v
add.v.v
pop.v.v self.siner
push.v self.outersin
pushi.e 1
add.i.v
pop.v.v self.outersin
push.v self.outersin
pushi.e 12
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 20
mul.i.v
pop.v.v self.outer
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 740
conv.i.v
push.v self.y
pushi.e 4
sub.i.v
push.v self.x
push.v self.sprite_width
pushi.e 2
conv.i.d
div.d.v
add.v.v
pushi.e 2
sub.i.v
push.v self.y
pushi.e 4
add.i.v
push.v self.x
push.v self.sprite_width
pushi.e 2
conv.i.d
div.d.v
sub.v.v
pushi.e 2
add.i.v
call.i collision_rectangle(argc=7)
pop.v.v self.gg
push.v self.gg
pushi.e -4
cmp.i.v NEQ
bf [end]

:[1]
push.v self.gg
conv.v.i
pushenv [3]

:[2]
call.i instance_destroy(argc=0)
popz.v

:[3]
popenv [2]
call.i instance_destroy(argc=0)
popz.v

:[end]