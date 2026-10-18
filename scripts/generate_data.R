set.seed(2026)

n <- 300
courses <- c("Statistics", "Databases", "Programming", "Data Visualization")

scores <- data.frame(
  student_id = sprintf("S%03d", 1:n),
  course = sample(courses, n, replace = TRUE),
  study_hours = round(runif(n, 1, 20), 1),
  attendance = round(runif(n, 60, 100), 1)
)

noise <- rnorm(n, mean = 0, sd = 6)
raw_score <- 35 + 2.2 * scores$study_hours + 0.2 * scores$attendance + noise
scores$final_score <- round(pmin(100, pmax(0, raw_score)), 1)

dir.create("data", showWarnings = FALSE)
write.csv(scores, "data/student_scores.csv", row.names = FALSE)
