.localvar 0 arguments

:[0]
push.v self.fade
pushi.e 1
cmp.i.v EQ
bf [5]

:[1]
push.v self.l_timer
pushi.e 1
add.i.v
pop.v.v self.l_timer
push.v self.l_timer
pushi.e 15
cmp.i.v GT
bf [3]

:[2]
push.v self.image_alpha
push.d 0.1
sub.d.v
pop.v.v self.image_alpha

:[3]
push.v self.image_alpha
push.d 0.1
cmp.d.v LT
bf [5]

:[4]
call.i instance_destroy(argc=0)
popz.v

:[5]
push.v self.oo
pushi.e 0
cmp.i.v EQ
bf [7]

:[6]
pushi.e 0
pop.v.i self.visible

:[7]
push.v self.oo
pushi.e 1
cmp.i.v EQ
bf [9]

:[8]
pushi.e 1
pop.v.i self.visible

:[9]
push.v self.timer
pushi.e 7
cmp.i.v GT
bf [12]

:[10]
pushi.e 1
pop.v.i self.oo
pushi.e 1
pop.v.i self.visible
push.v self.go
pushi.e 1
cmp.i.v EQ
bf [12]

:[11]
push.d 0.5
pop.v.d self.speed

:[12]
push.v self.oo
pushi.e 0
cmp.i.v EQ
bf [14]

:[13]
pushi.e 1
pop.v.i self.oo
b [15]

:[14]
pushi.e 0
pop.v.i self.oo

:[15]
push.v self.timer
pushi.e 1
add.i.v
pop.v.v self.timer

:[end]