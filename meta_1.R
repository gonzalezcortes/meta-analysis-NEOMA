#Meta-analysis workshop
#libraries

#call psychmeta library
library(psychmeta)

# Example dataset
df <- data.frame(
  study = c("Study 1", "Study 2", "Study 3"),
  effect_size = c(0.2, 0.3, 0.25),
  sample_size = c(100, 150, 120)
)

# Conducting the meta-analysis
meta_analysis_result <- ma_r(r = df$effect_size, n = df$sample_size, data = df)

# Viewing the results
print(meta_analysis_result)
