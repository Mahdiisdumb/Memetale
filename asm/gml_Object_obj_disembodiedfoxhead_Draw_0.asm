.localvar 0 arguments

:[0]
push.v self.myinteract
pushi.e 0
cmp.i.v GT
bf [2]

:[1]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
b [3]

:[2]
push.e 0

:[3]
bf [7]

:[4]
push.v 784.halt
pushi.e 0
cmp.i.v EQ
bf [6]

:[5]
push.v self.animanim
push.d 0.2
add.d.v
pop.v.v self.animanim

:[6]
push.v self.siner
push.d 0.5
add.d.v
pop.v.v self.siner
b [9]

:[7]
pushi.e 0
pop.v.i self.animanim
push.v self.siner
pushi.e 2
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 2
mul.i.v
push.d 1.9
cmp.d.v LT
bf [9]

:[8]
push.v self.siner
push.d 0.5
add.d.v
pop.v.v self.siner

:[9]
push.v self.siner
pushi.e 2
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 2
mul.i.v
pop.v.v self.ss
pushi.e 0
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.y
push.v self.sprite_height
add.v.v
pushi.e 1
add.i.v
push.v self.x
push.v self.sprite_width
add.v.v
pushi.e 8
sub.i.v
push.v self.ss
pushi.e 2
mul.i.v
add.v.v
push.v self.y
pushi.e 20
add.i.v
push.v self.ss
pushi.e 2
conv.i.d
div.d.v
add.v.v
push.v self.x
pushi.e 5
add.i.v
push.v self.ss
pushi.e 2
mul.i.v
sub.v.v
call.i ossafe_fill_rectangle(argc=4)
popz.v
push.v self.y
pushi.e 6
sub.i.v
push.v self.siner
pushi.e 2
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 6
mul.i.v
add.v.v
push.v self.x
push.v self.animanim
push.v self.sprite_index
call.i draw_sprite(argc=4)
popz.v

:[end]