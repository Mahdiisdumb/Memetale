.localvar 0 arguments

:[0]
pushglb.v global.monstersprite
pop.v.v self.sprite_index
pushi.e 0
pop.v.i self.line
pushi.e 0
pop.v.i self.finished
push.v self.sprite_index
call.i sprite_get_height(argc=1)
pop.v.v self.ht
push.v self.sprite_index
call.i sprite_get_width(argc=1)
pop.v.v self.wd
pushglb.v global.vaporspeed
pop.v.v self.myvapor
push.s "data/monster/"@47850
push.v self.sprite_index
call.i sprite_get_name(argc=1)
add.v.s
pop.v.v self.fileplace
push.v self.fileplace
call.i ossafe_file_text_open_write(argc=1)
pop.v.v self.file
pushi.e 190
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [4]

:[1]
pushi.e 190
pushenv [3]

:[2]
call.i instance_destroy(argc=0)
popz.v

:[3]
popenv [2]

:[4]
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
call.i action_set_alarm(argc=2)
popz.v

:[end]