.localvar 0 arguments

:[0]
push.v self.speed
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
pushi.e 0
pop.v.i self.image_index

:[2]
push.v self.speed
pushi.e 0
cmp.i.v GT
bf [4]

:[3]
push.d 0.25
pop.v.d self.image_speed

:[4]
push.v self.hspeed
pushi.e 0
cmp.i.v GT
bf [6]

:[5]
pushi.e 1941
pop.v.i self.sprite_index

:[6]
push.v self.hspeed
pushi.e 0
cmp.i.v LT
bf [8]

:[7]
pushi.e 1940
pop.v.i self.sprite_index

:[8]
push.v self.vspeed
pushi.e 0
cmp.i.v NEQ
bf [10]

:[9]
pushi.e 1942
pop.v.i self.sprite_index

:[10]
push.v self.mov
pushi.e 1
cmp.i.v EQ
bf [12]

:[11]
pushi.e -2
pop.v.i self.vspeed
pushi.e 2
pop.v.i self.mov

:[12]
push.v self.mov
pushi.e 2
cmp.i.v EQ
bf [end]

:[13]
push.v self.y
pushi.e -1
pushi.e 0
push.v [array]self.view_yview
pushi.e 50
sub.i.v
cmp.v.v LT
bf [end]

:[14]
call.i instance_destroy(argc=0)
popz.v

:[end]