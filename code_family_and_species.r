
# load data
fam_sp <- read.table( "--file location --.../family_and_species.txt", header = TRUE)

# count: species by family
fam_frequency <- table(fam_sp$Family)
range(fam_frequency)
ylim_max = 	max(fam_frequency) + 1 # see minumun and maximum value and define ylim

# plot
par(mar=c(10,4,4,4))	

barplot(sort(fam_frequency), ylim = c(0, ylim_max),
	las = 2, main = "Number of species by family", ylab = "Number")

