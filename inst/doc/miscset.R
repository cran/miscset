### R code from vignette source 'miscset.Rnw'

###################################################
### code chunk number 1: miscset.Rnw:33-34
###################################################
require(miscset)


###################################################
### code chunk number 2: miscset.Rnw:44-45
###################################################
ntri(12)


###################################################
### code chunk number 3: miscset.Rnw:51-52
###################################################
scale0(-1:3)


###################################################
### code chunk number 4: miscset.Rnw:60-62
###################################################
sortable(c(1,1,2,2,2,3))
sortable(c(1,1,2,2,2,3),F)


###################################################
### code chunk number 5: miscset.Rnw:73-76
###################################################
matA <- matrix(1:6, 2, dimnames = list(2:3,1:3))
matA
squarematrix(matA)


###################################################
### code chunk number 6: miscset.Rnw:85-88
###################################################
matB <- matrix(letters[1:9], 3, 3, dimnames = list(1:3,1:3))
matB
enpaire(matB)


###################################################
### code chunk number 7: miscset.Rnw:100-101
###################################################
paste0("page", leading0(1:10, 3))


###################################################
### code chunk number 8: miscset.Rnw:109-115
###################################################
strA <- c("A1 B1 C1","A2 B2", "AA A1", "AA", "B1 A1", "BB AB A1")
strA
strextr(strA, "^[AB][[:digit:]]$")
strextr(strA, "^[AB][[:digit:]]$", mult = T)
strextr(strA, "^[AB][[:digit:]]$", mult = T, unlist = T)
strextr(strA, "^[C][[:digit:]]$")


###################################################
### code chunk number 9: miscset.Rnw:124-126
###################################################
strC <- c("abc","abcb","abc")
strpart(strC, "", 4)


###################################################
### code chunk number 10: miscset.Rnw:133-134
###################################################
strrev(strC)


###################################################
### code chunk number 11: miscset.Rnw:143-147
###################################################
patA <- c("a", "b")
txtA <- c("aba", "aca", "bc")
msub(patA, "", txtA)
mgsub(patA, "", txtA)


###################################################
### code chunk number 12: miscset.Rnw:154-159
###################################################
patB <- c("a")
txtB <- c("abab", "ab", "xyz", NA)
gregexprind(patB, txtB, 1)
gregexprind(patB, txtB, 2)
gregexprind(patB, txtB, "last")


###################################################
### code chunk number 13: miscset.Rnw:167-169
###################################################
mgrepl(patA, txtA, any)
mgrepl(patA, txtA, all)


###################################################
### code chunk number 14: fig1
###################################################
par(mfrow = c(3,1), mai = c(.1,.1,.5,.1))
pts <- matrix(1:10, 10)
image(pts, col = gghcl(5), axes = F, main ="gghcl(5)")
image(pts, col = gghcl(10), axes = F, main = "gghcl(10)")
image(pts, col = gghcl(10, 1:5), axes = F, main ="gghcl(10, 1:5)")


###################################################
### code chunk number 15: miscset.Rnw:196-199
###################################################
lsall()
rmall()
lsall()


