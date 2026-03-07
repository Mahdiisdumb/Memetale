.localvar 0 arguments

:[0]
pushi.e 2
push.v self.guy
conv.v.i
pop.v.i [stacktop]self.pause
pushi.e 2
push.v self.guy_r
conv.v.i
pop.v.i [stacktop]self.pause
pushi.e 1
push.v self.guy3
conv.v.i
pop.v.i [stacktop]self.pauser
pushi.e 0
pushi.e -1
pushi.e 0
pop.v.i [array]self.talk
pushi.e 0
pushi.e -1
pushi.e 1
pop.v.i [array]self.talk
pushi.e 0
pushi.e -1
pushi.e 2
pop.v.i [array]self.talk
pushi.e 0
pushi.e -1
pushi.e 3
pop.v.i [array]self.talk
pushi.e 0
pushi.e -1
pushi.e 0
pop.v.i [array]self.talk_r
pushi.e 0
pushi.e -1
pushi.e 1
pop.v.i [array]self.talk_r
pushi.e 0
pushi.e -1
pushi.e 2
pop.v.i [array]self.talk_r
pushi.e 0
pushi.e -1
pushi.e 3
pop.v.i [array]self.talk_r
push.v self.guy
pushi.e -1
pushi.e 0
pop.v.v [array]self.sh
push.v self.guy2
pushi.e -1
pushi.e 1
pop.v.v [array]self.sh
push.v self.guy3
pushi.e -1
pushi.e 2
pop.v.v [array]self.sh
push.v self.guy4
pushi.e -1
pushi.e 3
pop.v.v [array]self.sh
push.v self.guy_r
pushi.e -1
pushi.e 4
pop.v.v [array]self.sh
push.v self.guy_r2
pushi.e -1
pushi.e 5
pop.v.v [array]self.sh
push.v self.guy_r3
pushi.e -1
pushi.e 6
pop.v.v [array]self.sh
push.v self.guy_r4
pushi.e -1
pushi.e 7
pop.v.v [array]self.sh
pushi.e 0
pop.v.i self.i

:[1]
push.v self.i
pushi.e 8
cmp.i.v LT
bf [end]

:[2]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.sh
conv.v.i
push.v [stacktop]self.x
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.shx
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.sh
conv.v.i
push.v [stacktop]self.y
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.shy
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [1]

:[end]