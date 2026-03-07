.localvar 0 arguments

:[0]
pushi.e 1
pop.v.i 1283.active
pushi.e 1283
pushenv [2]

:[1]
push.v self.rememberhspeed
pop.v.v self.hspeed

:[2]
popenv [1]
pushi.e 1952
pop.v.i self.sprite_index
push.d 0.25
pop.v.d self.image_speed
pushi.e 0
pushi.e -5
pushi.e 371
pop.v.i [array]global.flag

:[end]