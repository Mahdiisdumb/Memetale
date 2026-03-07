.localvar 0 arguments

:[0]
push.v self.phone
pushi.e 2
cmp.i.v NEQ
bf [14]

:[1]
pushi.e 764
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [6]

:[2]
pushi.e 1
pop.v.i self.myinteract
pushi.e 766
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [4]

:[3]
push.v 766.image_index
pop.v.v self.image_index
b [5]

:[4]
pushi.e 0
pop.v.i self.image_index

:[5]
b [12]

:[6]
pushi.e 0
pop.v.i self.myinteract
push.v self.path_position
pushi.e 1
cmp.i.v EQ
bf [8]

:[7]
pushi.e 0
pop.v.i self.image_index
pushi.e 0
pop.v.i self.image_speed
b [10]

:[8]
push.v self.path_speed
pushi.e 0
cmp.i.v NEQ
bf [10]

:[9]
push.d 0.2
pop.v.d self.image_speed

:[10]
push.v self.speed
pushi.e 0
cmp.i.v GT
bf [12]

:[11]
push.d 0.2
pop.v.d self.image_speed

:[12]
pushi.e 0
conv.i.v
call.i scr_npcdir(argc=1)
popz.v
push.v self.phone
pushi.e 1
cmp.i.v EQ
bf [14]

:[13]
pushi.e 1190
pop.v.i self.sprite_index

:[14]
push.v self.sprite_index
pushi.e 1210
cmp.i.v EQ
bf [16]

:[15]
push.v self.image_index
pushi.e 2
cmp.i.v GTE
b [17]

:[16]
push.e 0

:[17]
bf [end]

:[18]
pushi.e 0
pop.v.i self.image_speed
pushi.e 1211
pop.v.i self.sprite_index
pushi.e 1211
pop.v.i self.dsprite

:[end]