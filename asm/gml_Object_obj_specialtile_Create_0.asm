.localvar 0 arguments

:[0]
pushi.e 128
conv.i.v
call.i random(argc=1)
pop.v.v self.gg
push.v self.gg
pushi.e 120
add.i.v
push.v self.gg
pushi.e 120
add.i.v
push.v self.gg
pushi.e 120
add.i.v
call.i make_color_rgb(argc=3)
pop.v.v self.mygrey
pushi.e 30
pop.v.i self.garfield
pushi.e 0
pop.v.i self.rando
pushi.e 25
pop.v.i self.randofactor
pushi.e 0
pop.v.i self.finalrando
push.v self.id
pushi.e 1
conv.i.v
push.v self.object_index
call.i instance_find(argc=2)
cmp.v.v EQ
bf [2]

:[1]
pushi.e 1
pop.v.i self.kingrando
b [end]

:[2]
pushi.e 0
pop.v.i self.kingrando

:[end]