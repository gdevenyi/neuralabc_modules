install.packages("ctv")
library(ctv)
views = available.views()

for(view in sample(views)) {
	install.views(view)
}

