.localvar 0 arguments

:[0]
pushi.e 1218
conv.i.v
push.v self.checky
push.v self.checkx
call.i instance_position(argc=3)
conv.v.b
bf [2]

:[1]
pushi.e 1
pop.v.i self.thistile

:[2]
pushi.e 1216
conv.i.v
push.v self.checky
push.v self.checkx
call.i instance_position(argc=3)
conv.v.b
bf [4]

:[3]
pushi.e 2
pop.v.i self.thistile

:[4]
pushi.e 1217
conv.i.v
push.v self.checky
push.v self.checkx
call.i instance_position(argc=3)
conv.v.b
bf [6]

:[5]
pushi.e 3
pop.v.i self.thistile

:[6]
pushi.e 1219
conv.i.v
push.v self.checky
push.v self.checkx
call.i instance_position(argc=3)
conv.v.b
bf [8]

:[7]
pushi.e 4
pop.v.i self.thistile

:[8]
pushi.e 1220
conv.i.v
push.v self.checky
push.v self.checkx
call.i instance_position(argc=3)
conv.v.b
bf [10]

:[9]
pushi.e 5
pop.v.i self.thistile

:[10]
pushi.e 1221
conv.i.v
push.v self.checky
push.v self.checkx
call.i instance_position(argc=3)
conv.v.b
bf [12]

:[11]
pushi.e 6
pop.v.i self.thistile

:[12]
pushi.e 1223
conv.i.v
push.v self.checky
push.v self.checkx
call.i instance_position(argc=3)
conv.v.b
bf [14]

:[13]
pushi.e 7
pop.v.i self.thistile

:[14]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1215
conv.i.v
push.v self.checky
push.v self.checkx
call.i collision_point(argc=5)
pop.v.v self.tileid

:[end]