.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.myinteract
pushi.e 0
pop.v.i self.con
pushi.e 0
pop.v.i self.pcon
pushglb.v global.plot
pushi.e 180
cmp.i.v GT
bt [2]

:[1]
pushi.e -5
pushi.e 7
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
b [3]

:[2]
push.e 1

:[3]
bf [9]

:[4]
pushi.e 1953
conv.i.v
push.v self.y
push.v self.x
call.i scr_marker(argc=3)
pop.v.v self.meswitch
push.v self.meswitch
conv.v.i
pushenv [6]

:[5]
push.i 700000
pop.v.i self.depth

:[6]
popenv [5]
push.v self.meswitch
conv.v.i
pushenv [8]

:[7]
push.d 0.2
pop.v.d self.image_speed

:[8]
popenv [7]
call.i instance_destroy(argc=0)
popz.v
exit.i

:[9]
pushglb.v global.plot
pushi.e 180
cmp.i.v GT
bf [11]

:[10]
pushi.e 1953
pop.v.i self.sprite_index
pushi.e 99
pop.v.i self.con
b [12]

:[11]
pushi.e 1185
conv.i.v
pushi.e 80
conv.i.v
pushi.e 280
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.ff
pushi.e 5
push.v self.ff
conv.v.i
pop.v.i [stacktop]self.image_yscale
pushi.e 0
push.v self.ff
conv.v.i
pop.v.i [stacktop]self.basic
pushi.e 40
pop.v.i self.pcon

:[12]
push.d 0.25
pop.v.d self.image_speed
pushi.e 0
pop.v.i self.fader
pushglb.v global.hp
pop.v.v self.remhp
pushbltn.v self.room
pushi.e 192
cmp.i.v EQ
bf [end]

:[13]
push.i 700000
pop.v.i self.depth

:[end]