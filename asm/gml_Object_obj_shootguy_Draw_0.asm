.localvar 0 arguments

:[0]
push.v self.y
push.v self.x
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite(argc=4)
popz.v
push.v self.active
pushi.e 1
cmp.i.v EQ
bf [4]

:[1]
pushi.e 0
pop.v.i self.i

:[2]
push.v self.i
push.v self.ammo
cmp.v.v LT
bf [4]

:[3]
push.v self.y
pushi.e 2
sub.i.v
push.v self.x
pushi.e 20
add.i.v
push.v self.i
pushi.e 10
mul.i.v
add.v.v
pushi.e 0
conv.i.v
pushi.e 1914
conv.i.v
call.i draw_sprite(argc=4)
popz.v
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [2]

:[4]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.win
pushi.e 0
cmp.i.v GT
bf [6]

:[5]
push.i 65280
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[6]
pushi.e 1
conv.i.v
push.v self.gridd
pushi.e 1
add.i.v
push.v self.gridr
pushi.e 1
add.i.v
push.v self.gridu
pushi.e 2
sub.i.v
push.v self.gridl
pushi.e 2
sub.i.v
call.i draw_rectangle(argc=5)
popz.v
push.v self.wintimer
pushi.e 50
cmp.i.v GTE
bf [8]

:[7]
push.v self.gridu
pushi.e 15
sub.i.v
push.v self.gridr
pushi.e 2
conv.i.d
div.d.v
push.v self.gridl
pushi.e 2
conv.i.d
div.d.v
add.v.v
pushi.e 0
conv.i.v
pushi.e 1907
conv.i.v
call.i draw_sprite(argc=4)
popz.v

:[8]
push.v self.restart
pushi.e 0
cmp.i.v GT
bf [12]

:[9]
push.v self.rstype
pushi.e 99
cmp.i.v LT
bf [11]

:[10]
push.v self.gridu
pushi.e 15
sub.i.v
push.v self.gridr
pushi.e 2
conv.i.d
div.d.v
push.v self.gridl
pushi.e 2
conv.i.d
div.d.v
add.v.v
pushi.e 0
conv.i.v
pushi.e 1905
conv.i.v
call.i draw_sprite(argc=4)
popz.v
b [12]

:[11]
push.v self.gridu
pushi.e 15
sub.i.v
push.v self.gridr
pushi.e 2
conv.i.d
div.d.v
push.v self.gridl
pushi.e 2
conv.i.d
div.d.v
add.v.v
pushi.e 0
conv.i.v
pushi.e 1906
conv.i.v
call.i draw_sprite(argc=4)
popz.v

:[12]
push.v self.active
pushi.e 0
cmp.i.v EQ
bf [end]

:[13]
pushi.e 0
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.d 0.4
conv.d.v
call.i draw_set_alpha(argc=1)
popz.v
pushi.e 160
conv.i.v
pushi.e 400
conv.i.v
pushi.e -10
conv.i.v
pushi.e -10
conv.i.v
call.i ossafe_fill_rectangle(argc=4)
popz.v
pushi.e 1
conv.i.v
call.i draw_set_alpha(argc=1)
popz.v

:[end]