.localvar 0 arguments

:[0]
pushi.e 1217
pop.v.i self.dsprite
pushi.e 1219
pop.v.i self.usprite
pushi.e 1214
pop.v.i self.lsprite
pushi.e 1215
pop.v.i self.rsprite
pushi.e 1217
pop.v.i self.dtsprite
pushi.e 1219
pop.v.i self.utsprite
pushi.e 1214
pop.v.i self.ltsprite
pushi.e 1215
pop.v.i self.rtsprite
pushi.e 0
pop.v.i self.myinteract
pushi.e 0
pop.v.i self.facing
pushi.e 270
pop.v.i self.direction
pushi.e 0
pop.v.i self.talkedto
pushi.e 0
pop.v.i self.image_speed
pushi.e 0
pop.v.i self.fun
pushi.e 0
pop.v.i self.con
pushi.e 0
pop.v.i self.bringback
pushi.e 0
pop.v.i self.buffer
call.i scr_murderlv(argc=0)
pushi.e 10
cmp.i.v LT
bf [4]

:[1]
pushi.e 1365
conv.i.v
pushi.e 70
conv.i.v
pushi.e 690
conv.i.v
call.i instance_create(argc=3)
pushi.e -1
pushi.e 0
pop.v.v [array]self.snail
pushi.e 1649
pushi.e -1
pushi.e 0
push.v [array]self.snail
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 1365
conv.i.v
pushi.e 100
conv.i.v
pushi.e 690
conv.i.v
call.i instance_create(argc=3)
pushi.e -1
pushi.e 1
pop.v.v [array]self.snail
pushi.e 1653
pushi.e -1
pushi.e 1
push.v [array]self.snail
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 1365
conv.i.v
pushi.e 130
conv.i.v
pushi.e 690
conv.i.v
call.i instance_create(argc=3)
pushi.e -1
pushi.e 2
pop.v.v [array]self.snail
pushi.e 1655
pushi.e -1
pushi.e 2
push.v [array]self.snail
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 0
pop.v.i self.i

:[2]
push.v self.i
pushi.e 3
cmp.i.v LT
bf [4]

:[3]
pushi.e 4000
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.snail
conv.v.i
pop.v.i [stacktop]self.depth
pushi.e 0
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.snail
conv.v.i
pop.v.i [stacktop]self.image_speed
pushi.e 1
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.snail
conv.v.i
pop.v.i [stacktop]self.visible
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [2]

:[4]
pushi.e 0
pop.v.i self.blcontimer
pushi.e 0
pop.v.i self.encouragement
pushi.e 0
pop.v.i self.blconyes
pushi.e 0
pop.v.i self.snailtimer
pushi.e 0
pop.v.i self.snailsad
pushi.e 0
pop.v.i self.won
pushi.e 0
pop.v.i self.fun
pushi.e 0
pop.v.i self.con
pushi.e 0
pop.v.i self.bringback
pushi.e -5
pushi.e 7
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [6]

:[5]
call.i instance_destroy(argc=0)
popz.v

:[6]
call.i scr_murderlv(argc=0)
pushi.e 10
cmp.i.v GTE
bf [end]

:[7]
call.i instance_destroy(argc=0)
popz.v

:[end]