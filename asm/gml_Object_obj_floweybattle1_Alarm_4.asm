.localvar 0 arguments

:[0]
pushglb.v global.language
push.s "ja"@3058
cmp.s.v NEQ
bf [2]

:[1]
pushi.e 170
pushi.e -1
pushi.e 6
pop.v.i [array]self.alarm

:[2]
pushi.e 6
pop.v.i global.typer
pushi.e 188
conv.i.v
push.v self.y
push.v self.x
push.v self.sprite_width
add.v.v
call.i instance_create(argc=3)
pop.v.v self.blcon
push.d 9.2
pop.v.d self.conversation
pushi.e 672
pop.v.i global.msc
pushi.e 784
conv.i.v
push.v 188.y
pushi.e 10
add.i.v
push.v 188.x
pushi.e 40
add.i.v
call.i instance_create(argc=3)
pop.v.v self.blconwriter

:[end]