.localvar 0 arguments

:[0]
push.v self.y
push.v self.x
pushi.e 0
conv.i.v
push.v self.sprite_index
call.i draw_sprite(argc=4)
popz.v
push.v self.open
pushi.e 2
cmp.i.v EQ
bf [2]

:[1]
push.v self.y
push.v self.x
pushi.e 1
conv.i.v
push.v self.sprite_index
call.i draw_sprite(argc=4)
popz.v

:[2]
push.v self.open
pushi.e 1
cmp.i.v EQ
bf [7]

:[3]
pushi.e 1576
conv.i.v
call.i distance_to_object(argc=1)
pop.v.v self.dist
push.v self.dist
pushi.e 20
cmp.i.v LT
bf [7]

:[4]
pushi.e 10
conv.i.d
push.v self.dist
pushi.e 1
add.i.v
div.v.d
pop.v.v self.disto
push.v self.disto
pushi.e 1
cmp.i.v GT
bf [6]

:[5]
pushi.e 1
pop.v.i self.disto

:[6]
push.v self.disto
push.i 16777215
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.y
pushi.e 10
add.i.v
push.v self.x
pushi.e 10
add.i.v
pushi.e 20
conv.i.v
pushi.e 40
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1660
conv.i.v
call.i draw_sprite_part_ext(argc=12)
popz.v

:[7]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [9]

:[8]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [10]

:[9]
push.e 0

:[10]
bf [12]

:[11]
pushi.e 2
pop.v.i self.con
pushi.e 1
pop.v.i self.open

:[12]
push.v self.con
pushi.e 3
cmp.i.v EQ
bf [14]

:[13]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [15]

:[14]
push.e 0

:[15]
bf [end]

:[16]
pushi.e 4
pop.v.i self.con
pushi.e 2
pop.v.i self.open
pushi.e 107
conv.i.v
call.i snd_play(argc=1)
popz.v
push.v self.mysolid
conv.v.i
pushenv [18]

:[17]
call.i instance_destroy(argc=0)
popz.v

:[18]
popenv [17]

:[end]