.localvar 0 arguments

:[0]
push.v self.vtext
conv.v.b
bf [2]

:[1]
push.v self.myx
push.v self.vspacing
sub.v.v
pop.v.v self.myx
push.v self.writingy
pop.v.v self.myy
b [end]

:[2]
push.v self.writingx
pop.v.v self.myx
push.v self.myy
push.v self.vspacing
add.v.v
pop.v.v self.myy

:[end]