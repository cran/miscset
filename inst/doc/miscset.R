## ----include=FALSE, echo=FALSE-------------------------------------------
require(knitr)
opts_chunk$set(concordance=TRUE)

## ------------------------------------------------------------------------
require(miscset)

## ------------------------------------------------------------------------
f <- function (x) c(conc.diff = diff(range(x$conc)), uptake.sum=sum(x$uptake))
d <- gapply(CO2, c('Type', 'Treatment'), f)
levels(d)
head(as.data.frame(d))

## ------------------------------------------------------------------------
ntri(12)

## ------------------------------------------------------------------------
scale0(0:10)
scale0(-1:3)
scale0(2:3)

## ------------------------------------------------------------------------
M <- matrix(1:6, 2, dimnames = list(2:3,1:3))
M
squarematrix(M)

## ------------------------------------------------------------------------
M <- matrix(letters[1:9], 3, 3, dimnames = list(1:3,1:3))
M
enpaire(M)

## ------------------------------------------------------------------------
textable(head(trees,3), rownames=T, digits=4, align='c', caption='R dataset "trees".')

## ------------------------------------------------------------------------
paste0("page", leading0(8:10, 3))

## ------------------------------------------------------------------------
s <- c("a1 b1 c1", "a2 b2", "aa a1", "aa", "b1 a1", "bb ab a1")
strextr(s, "^[ab][[:digit:]]$")
strextr(s, "^[ab][[:digit:]]$", mult = T)
strextr(s, "^[ab][[:digit:]]$", mult = T, unlist = T)
strextr(s, "^[c][[:digit:]]$")

## ------------------------------------------------------------------------
s
strpart(s, " ", 2)

## ------------------------------------------------------------------------
strrev('!dlroW olleH')
s
strrev(s)

## ------------------------------------------------------------------------
s
msub("A", "X", s)
mgsub("A", "X", s)

## ------------------------------------------------------------------------
s
gregexprind("a", s, 1)
gregexprind("a", s, 2)
gregexprind("a", s, "last")

## ------------------------------------------------------------------------
s
mgrepl(c("a","b"), s, any)
mgrepl(c("a","b"), s, all)

## ----label=fig1, echo=FALSE, fig.width=3, fig.height=4, fig.align='center'----
par(mfrow = c(3,1), mai = c(.1,.1,.5,.1))
pts <- matrix(1:10, 10)
image(pts, col = gghcl(5), axes = F, main ="gghcl(5)")
image(pts, col = gghcl(10), axes = F, main = "gghcl(10)")
image(pts, col = gghcl(10, 1:5), axes = F, main ="gghcl(10, 1:5)")
rm(pts)

## ------------------------------------------------------------------------
lsall()
rmall()
lsall()

