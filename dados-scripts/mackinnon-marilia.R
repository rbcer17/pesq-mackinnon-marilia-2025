library(iNEXT)
data("spider")
summary(spider)
spider
str(spider)
iNEXT(spider, q=0, datatype="abundance")
macki = MACKINNON2025_PARA_R
iNEXT(macki$SOMA, q=0, datatype = "abundance")
dadograf = iNEXT(macki$SOMA, q=0, datatype = "abundance")
ggiNEXT(dadograf, type=1, se=TRUE, facet.var="None", color.var="Both", grey=FALSE)  
dadograf500 <- iNEXT(macki$SOMA, q=0, datatype = "abundance", endpoint = 500)
dadograf1000 <- iNEXT(macki$SOMA, q=0, datatype = "abundance", endpoint = 1000)
ggiNEXT(dadograf500, type=1, se=TRUE, facet.var="None", color.var="site", grey=FALSE)  
ggiNEXT(dadograf1000, type=1, se=TRUE, facet.var="None", color.var="site", grey=FALSE)  
dadograf1000

#calcular riqueza estimada e diversidade de especies entre os habitats
#
mackincoicc = as.data.frame(mackinnon_2025_co_icc)
iNEXT(mackincoicc, q=0, datatype="abundance")
dadografcoicc = iNEXT(mackincoicc, q=0, datatype="abundance")
ggiNEXT(dadografcoicc, type=1, se=TRUE, facet.var="None", color.var="Both", grey=FALSE)
#
countsicc = table(mackincoicc$SOMAICC)
print(countsicc)
countsco = table(mackincoicc$SOMACO)
print(countsco)
