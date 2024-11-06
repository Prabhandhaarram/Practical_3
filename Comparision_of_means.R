df$isAsian<-
  ifelse(df$continent=="Asia","Asia","Not Asia")

df2<-subset(df,gbpfood<150)

hist(df2$gbpfood)
#Having put the limit at 150 we get something
#that is a bit normal but not convincingly. (If we
#had put the limit at 80 it does appear more
#normal but still not very good
t.test(df2$gbpfood ~ df2$isAsian)
wilcox.test(df2$gbpfood ~ df2$isAsian)
