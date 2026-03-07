.localvar 0 arguments

:[0]
push.v self.visible
pushi.e 1
cmp.i.v EQ
bf [4]

:[1]
push.v other.id
conv.v.i
pushenv [3]

:[2]
call.i instance_destroy(argc=0)
popz.v

:[3]
popenv [2]

:[4]
push.v self.visible
pushi.e 1
cmp.i.v EQ
bf [end]

:[5]
pushi.e 403
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [7]

:[6]
push.v global.ratings
pushi.e 20
add.i.v
pop.v.v global.ratings

:[7]
pushi.e 129
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 426
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.bp
push.v self.bp
call.i instance_exists(argc=1)
conv.v.b
bf [9]

:[8]
push.v self.sprite_index
push.v self.bp
conv.v.i
pop.v.v [stacktop]self.sprite_index

:[9]
pushi.e 0
pop.v.i self.visible

:[end]