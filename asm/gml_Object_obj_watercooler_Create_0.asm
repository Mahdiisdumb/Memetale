.localvar 0 arguments

:[0]
pushi.e 21
pushi.e -5
pushi.e 440
push.v [array]global.flag
sub.v.i
pop.v.v self.height
pushi.e 4
pushi.e 10
conv.i.v
call.i random(argc=1)
add.v.i
pushi.e -1
pushi.e 0
pop.v.v [array]self.bubx
pushi.e 5
pushi.e 15
conv.i.v
call.i random(argc=1)
add.v.i
pushi.e -1
pushi.e 0
pop.v.v [array]self.buby
pushi.e 4
pushi.e 10
conv.i.v
call.i random(argc=1)
add.v.i
pushi.e -1
pushi.e 1
pop.v.v [array]self.bubx
pushi.e 5
pushi.e 15
conv.i.v
call.i random(argc=1)
add.v.i
pushi.e -1
pushi.e 1
pop.v.v [array]self.buby
pushi.e 4
pushi.e 10
conv.i.v
call.i random(argc=1)
add.v.i
pushi.e -1
pushi.e 2
pop.v.v [array]self.bubx
pushi.e 5
pushi.e 15
conv.i.v
call.i random(argc=1)
add.v.i
pushi.e -1
pushi.e 2
pop.v.v [array]self.buby
pushi.e 0
pop.v.i self.siner
pushi.e 1
pop.v.i self.w_con
pushi.e 0
pop.v.i self.w_timer
pushi.e 0
pop.v.i self.pour_index
pushi.e 1443
pop.v.i self.dsprite
pushi.e 1452
pop.v.i self.usprite
pushi.e 1457
pop.v.i self.lsprite
pushi.e 1453
pop.v.i self.rsprite
pushi.e 1443
pop.v.i self.dtsprite
pushi.e 1452
pop.v.i self.utsprite
pushi.e 1457
pop.v.i self.ltsprite
pushi.e 1453
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
pop.v.i self.havewater
call.i scr_depth(argc=0)
popz.v
pushi.e 0
pop.v.i self.w_active
pushi.e 0
pop.v.i self.madepud
pushi.e 2
conv.i.v
call.i event_user(argc=1)
popz.v

:[end]