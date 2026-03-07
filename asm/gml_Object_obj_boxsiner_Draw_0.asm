.localvar 0 arguments

:[0]
push.i 32768
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 0
pop.v.i self.yoff
push.v self.siner
pushi.e 1
add.i.v
pop.v.v self.siner
push.v self.fade
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
push.v self.alpha
push.d 0.01
sub.d.v
pop.v.v self.alpha

:[2]
push.v self.alpha
pushi.e 0
cmp.i.v LTE
bf [4]

:[3]
call.i instance_destroy(argc=0)
popz.v

:[4]
pushi.e 2
dup.i 0
push.i 0
cmp.i.i LTE
bt [9]

:[5]
pushi.e 0
pop.v.i self.i

:[6]
push.v self.i
pushi.e 6
cmp.i.v LT
bf [8]

:[7]
push.v self.alpha
call.i draw_set_alpha(argc=1)
popz.v
push.v self.i
pushi.e 3
mul.i.v
push.v self.siner
pushi.e 2
conv.i.d
div.d.v
add.v.v
pushi.e 8
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 20
mul.i.v
pop.v.v self.ysin
pushi.e 1
conv.i.v
pushi.e 136
push.v self.yoff
add.v.i
push.v self.ysin
add.v.v
pushi.e 20
push.v self.i
pushi.e 1
add.i.v
pushi.e 100
mul.i.v
add.v.i
pushi.e 16
push.v self.yoff
add.v.i
push.v self.ysin
add.v.v
pushi.e 20
push.v self.i
pushi.e 100
mul.i.v
add.v.i
call.i draw_rectangle(argc=5)
popz.v
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [6]

:[8]
pushi.e 120
pop.v.i self.yoff
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [5]

:[9]
popz.i
pushi.e 1
conv.i.v
call.i draw_set_alpha(argc=1)
popz.v

:[end]