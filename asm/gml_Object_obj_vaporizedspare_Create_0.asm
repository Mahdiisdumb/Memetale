.localvar 0 arguments

:[0]
pushglb.v global.monstersprite
pop.v.v self.sprite_index
pushi.e 0
pop.v.i self.line
pushi.e 0
pop.v.i self.finished
pushi.e 0
pop.v.i self.linefriended
push.v self.sprite_index
call.i sprite_get_height(argc=1)
pop.v.v self.ht
push.v self.sprite_index
call.i sprite_get_width(argc=1)
pop.v.v self.wd
pushglb.v global.vaporspeed
pop.v.v self.myvapor
push.v self.myvapor
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
pushi.e 92
conv.i.v
call.i snd_play(argc=1)
popz.v

:[2]
push.s "data/monster/"@47850
pushglb.v global.monstersprite
call.i string(argc=1)
add.v.s
pop.v.v self.fileplace
push.v self.fileplace
call.i ossafe_file_text_open_read(argc=1)
pop.v.v self.file
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
call.i action_set_alarm(argc=2)
popz.v

:[end]