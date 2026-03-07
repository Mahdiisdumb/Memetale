.localvar 0 arguments

:[0]
push.v self.x
push.v self.sprite_width
neg.v
cmp.v.v LT
bf [end]

:[1]
pushi.e 0
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monster

:[end]