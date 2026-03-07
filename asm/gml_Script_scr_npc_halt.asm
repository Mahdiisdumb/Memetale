.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.image_index
pushi.e 0
pop.v.i self.image_speed
pushi.e 0
pop.v.i self.hspeed
pushi.e 0
pop.v.i self.vspeed
pushi.e 0
pop.v.i self.npcdir
pushbltn.v self.argument0
push.s "u"@2917
cmp.s.v EQ
bf [2]

:[1]
push.v self.usprite
pop.v.v self.sprite_index

:[2]
pushbltn.v self.argument0
push.s "d"@3518
cmp.s.v EQ
bf [4]

:[3]
push.v self.dsprite
pop.v.v self.sprite_index

:[4]
pushbltn.v self.argument0
push.s "l"@3021
cmp.s.v EQ
bf [6]

:[5]
push.v self.lsprite
pop.v.v self.sprite_index

:[6]
pushbltn.v self.argument0
push.s "r"@715
cmp.s.v EQ
bf [end]

:[7]
push.v self.rsprite
pop.v.v self.sprite_index

:[end]