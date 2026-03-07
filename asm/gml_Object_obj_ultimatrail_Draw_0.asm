.localvar 0 arguments
.localvar 1 i 4944

:[0]
pushi.e 12
pop.v.i local.i

:[1]
pushloc.v local.i
pushi.e 0
cmp.i.v GT
bf [3]

:[2]
pushi.e -1
pushloc.v local.i
pushi.e 1
sub.i.v
conv.v.i
push.v [array]self.xprev
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.v [array]self.xprev
pushi.e -1
pushloc.v local.i
pushi.e 1
sub.i.v
conv.v.i
push.v [array]self.yprev
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.v [array]self.yprev
push.v local.i
push.e 1
sub.i.v
pop.v.v local.i
b [1]

:[3]
push.v self.x
pushi.e -1
pushi.e 0
pop.v.v [array]self.xprev
push.v self.y
pushi.e -1
pushi.e 0
pop.v.v [array]self.yprev
push.v self.image_blend
call.i draw_set_color(argc=1)
popz.v
pushi.e 2
conv.i.v
pushi.e -1
pushi.e 12
push.v [array]self.yprev
pushi.e -1
pushi.e 12
push.v [array]self.xprev
pushi.e -1
pushi.e 10
push.v [array]self.yprev
pushi.e -1
pushi.e 10
push.v [array]self.xprev
call.i draw_line_width(argc=5)
popz.v
pushi.e 4
conv.i.v
pushi.e -1
pushi.e 10
push.v [array]self.yprev
pushi.e -1
pushi.e 10
push.v [array]self.xprev
pushi.e -1
pushi.e 8
push.v [array]self.yprev
pushi.e -1
pushi.e 8
push.v [array]self.xprev
call.i draw_line_width(argc=5)
popz.v
pushi.e 6
conv.i.v
pushi.e -1
pushi.e 8
push.v [array]self.yprev
pushi.e -1
pushi.e 8
push.v [array]self.xprev
pushi.e -1
pushi.e 4
push.v [array]self.yprev
pushi.e -1
pushi.e 4
push.v [array]self.xprev
call.i draw_line_width(argc=5)
popz.v
pushi.e 8
conv.i.v
pushi.e -1
pushi.e 4
push.v [array]self.yprev
pushi.e -1
pushi.e 4
push.v [array]self.xprev
push.v self.y
push.v self.x
call.i draw_line_width(argc=5)
popz.v

:[end]