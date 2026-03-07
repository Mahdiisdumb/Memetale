.localvar 0 arguments

:[0]
push.v self.image_index
pushi.e 5
cmp.i.v GTE
bf [2]

:[1]
push.v self.image_index
pushi.e 6
cmp.i.v LT
b [3]

:[2]
push.e 0

:[3]
bf [8]

:[4]
pushi.e -1
push.v self.curamt
conv.v.i
push.v [array]self.type
pushi.e 1
cmp.i.v EQ
bf [6]

:[5]
push.i 16754964
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
call.i ossafe_fill_rectangle(argc=4)
popz.v

:[6]
pushi.e -1
push.v self.curamt
conv.v.i
push.v [array]self.type
pushi.e 2
cmp.i.v EQ
bf [8]

:[7]
push.i 4235519
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
call.i ossafe_fill_rectangle(argc=4)
popz.v

:[8]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
push.v self.image_yscale
push.v self.image_xscale
push.v self.y
push.v self.x
push.v self.image_index
pushi.e 659
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e -1
push.v self.curamt
conv.v.i
push.v [array]self.type
pushi.e 0
cmp.i.v EQ
bf [10]

:[9]
pushi.e 255
pop.v.i self.image_blend

:[10]
pushi.e -1
push.v self.curamt
conv.v.i
push.v [array]self.type
pushi.e 1
cmp.i.v EQ
bf [12]

:[11]
push.i 16754964
pop.v.i self.image_blend

:[12]
pushi.e -1
push.v self.curamt
conv.v.i
push.v [array]self.type
pushi.e 2
cmp.i.v EQ
bf [14]

:[13]
push.i 4235519
pop.v.i self.image_blend

:[14]
pushi.e 1
conv.i.v
push.v self.image_blend
pushi.e 0
conv.i.v
push.v self.image_yscale
push.v self.image_xscale
push.v self.y
push.v self.x
push.v self.image_index
pushi.e 658
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[end]