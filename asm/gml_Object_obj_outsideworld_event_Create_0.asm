.localvar 0 arguments

:[0]
pushi.e 1
pushi.e -5
pushi.e 7
pop.v.i [array]global.flag
pushi.e 1
pop.v.i global.interact
push.d 0.2
conv.d.v
push.i 4235519
conv.i.v
pushi.e 0
conv.i.v
call.i merge_color(argc=3)
pop.v.v self.thisblend
push.v self.thisblend
pop.v.v 1371.image_blend
pushi.e 90
pop.v.i 1371.direction
pushi.e 0
pop.v.i 1371.image_speed
pushi.e 1
pop.v.i 1371.fun
pushi.e 0
pop.v.i 1576.visible
pushi.e 1132
conv.i.v
push.v 1576.y
push.v 1576.x
call.i scr_marker(argc=3)
pop.v.v self.mc
push.v 1576.depth
push.v self.mc
conv.v.i
pop.v.v [stacktop]self.depth
push.v self.thisblend
push.v self.mc
conv.v.i
pop.v.v [stacktop]self.image_blend
pushi.e 1
pop.v.i self.con
push.d 2.3
pop.v.d self.blk
pushi.e 1316
pop.v.i self.pap
pushi.e 1313
pop.v.i self.tor
pushi.e 1318
pop.v.i self.asg
pushi.e 1315
pop.v.i self.und
pushi.e 1314
pop.v.i self.sans
pushi.e 1317
pop.v.i self.al
pushi.e 1414
push.v self.pap
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 1200
push.v self.tor
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 2006
push.v self.asg
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 1742
push.v self.al
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 1452
push.v self.sans
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 1502
push.v self.und
conv.v.i
pop.v.i [stacktop]self.sprite_index
push.s "music/leave.ogg"@2783
conv.s.v
call.i caster_load(argc=1)
pop.v.v self.o_music
pushi.e 0
pop.v.i self.do_room_goto

:[end]