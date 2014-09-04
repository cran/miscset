## ----include=FALSE, echo=FALSE-------------------------------------------
require(knitr)
opts_chunk$set(concordance=TRUE)

## ------------------------------------------------------------------------
require(miscset)

## ------------------------------------------------------------------------
ntri(12)

## ------------------------------------------------------------------------
scale0(0:10)
scale0(-1:3)
scale0(2:3)

## ------------------------------------------------------------------------
f <- function (x) c(conc.diff = diff(range(x$conc)), uptake.sum=sum(x$uptake))
d <- gapply(CO2, c('Type', 'Treatment'), f)
levels(d)
head(as.data.frame(d))

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
lsall()
rmall()
lsall()

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

## ----label=fig_gghcl, echo=FALSE, fig.width=6, fig.height=3, fig.align='center'----
par(mfrow = c(1,3), mai = c(.1,.5,.5,.1))
image(matrix(1:5, 1), col = gghcl(5), axes = F, main ="gghcl(5)")
image(matrix(1:10, 1), col = gghcl(10), axes = F, main = "gghcl(10)")
image(matrix(1:5, 1), col = gghcl(10, 1:5), axes = F, main ="gghcl(10, 1:5)")

## ----label=fig_ggplotlist, eval=FALSE, fig.width=6, fig.height=3, fig.align='center'----
#  library(ggplot2)
#  gg1 <- ggplot(data.frame(a=1:5,b=1:5), aes(x=a,y=b,col=b)) + geom_line()
#  gg2 <- ggplot(data.frame(a=1:5,b=1:5), aes(x=a,y=b,shape=factor(b))) + geom_point()
#  ggplotlist(list(gg1, "abc", gg2), 2)

