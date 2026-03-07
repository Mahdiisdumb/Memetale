.localvar 0 arguments

:[0]
push.v self.y
push.v self.x
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite(argc=4)
popz.v
push.v self.w_active
pushi.e 1
cmp.i.v EQ
bf [end]

:[1]
pushi.e 0
pop.v.i 1576.visible
push.v self.w_timer
pushi.e 1
add.i.v
pop.v.v self.w_timer
push.v self.w_timer
pushi.e 30
cmp.i.v LT
bf [5]

:[2]
push.v self.xx
push.v self.thisx
pushi.e 10
sub.i.v
cmp.v.v GT
bf [4]

:[3]
push.v self.xx
pushi.e 1
sub.i.v
pop.v.v self.xx

:[4]
push.v 1576.y
push.v self.xx
push.v self.w_timer
pushi.e 3
conv.i.d
div.d.v
call.i floor(argc=1)
pushi.e 1122
conv.i.v
call.i draw_sprite(argc=4)
popz.v

:[5]
push.v self.w_timer
pushi.e 30
cmp.i.v GTE
bf [7]

:[6]
push.v self.w_timer
pushi.e 120
cmp.i.v LT
b [8]

:[7]
push.e 0

:[8]
bf [11]

:[9]
push.v self.pour_index
push.d 0.2
add.d.v
pop.v.v self.pour_index
push.v 1576.y
push.v self.xx
push.v self.pour_index
call.i floor(argc=1)
pushi.e 1126
conv.i.v
call.i draw_sprite(argc=4)
popz.v
push.v self.pour_index
push.d 5.8
cmp.d.v GTE
bf [11]

:[10]
push.d 4.2
pop.v.d self.pour_index

:[11]
push.v self.w_timer
pushi.e 120
cmp.i.v GTE
bf [end]

:[12]
push.v self.pour_index
push.d 0.2
add.d.v
pop.v.v self.pour_index
push.v self.pour_index
push.d 7.8
cmp.d.v LTE
bf [14]

:[13]
push.v 1576.y
push.v self.xx
push.v self.pour_index
call.i floor(argc=1)
pushi.e 1126
conv.i.v
call.i draw_sprite(argc=4)
popz.v
b [end]

:[14]
push.v self.xx
push.v self.thisx
cmp.v.v LT
bf [16]

:[15]
push.v self.xx
pushi.e 1
add.i.v
pop.v.v self.xx
push.v 1576.y
push.v self.xx
push.v self.w_timer
pushi.e 3
conv.i.d
div.d.v
call.i floor(argc=1)
pushi.e 1122
conv.i.v
call.i draw_sprite(argc=4)
popz.v
b [end]

:[16]
pushi.e 0
pushi.e -5
pushi.e 366
pop.v.i [array]global.flag
pushi.e 1300
pushenv [18]

:[17]
pushi.e 0
pop.v.i self.havewater

:[18]
popenv [17]
pushi.e 1
pop.v.i 1576.visible
pushi.e 1576
pushenv [20]

:[19]
pushi.e 1134
pop.v.i self.lsprite
pushi.e 1132
pop.v.i self.usprite
pushi.e 1131
pop.v.i self.dsprite
pushi.e 1133
pop.v.i self.rsprite

:[20]
popenv [19]
pushi.e 0
pop.v.i self.w_active
pushi.e 11
pop.v.i self.con

:[end]