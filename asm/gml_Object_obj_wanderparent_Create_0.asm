.localvar 0 arguments

:[0]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i scr_depth(argc=5)
popz.v
pushi.e 0
pop.v.i self.image_speed
pushi.e 1175
pop.v.i self.dsprite
pushi.e 1180
pop.v.i self.usprite
pushi.e 1176
pop.v.i self.lsprite
pushi.e 1177
pop.v.i self.rsprite
pushi.e 1182
pop.v.i self.dtsprite
pushi.e 1181
pop.v.i self.utsprite
pushi.e 1179
pop.v.i self.ltsprite
pushi.e 1178
pop.v.i self.rtsprite
pushi.e 2
conv.i.v
pushi.e 113
conv.i.v
call.i script_execute(argc=2)
popz.v
pushi.e 20
pushi.e -1
pushi.e 0
pop.v.i [array]self.movementalarm
pushi.e -1
pushi.e -1
pushi.e 1
pop.v.i [array]self.movementalarm
pushi.e 0
pop.v.i self.memoryispeed

:[end]