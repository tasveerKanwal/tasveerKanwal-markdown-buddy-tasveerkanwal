library(readr)
library(dplyr)
library(ggplot2)

scores <- read_csv("data/student_scores.csv", show_col_types = FALSE)

course_summary <- scores |>
  group_by(course) |>
  summarise(
    students = n(),
    mean_score = round(mean(final_score), 1),
    median_score = round(median(final_score), 1),
    mean_study_hours = round(mean(study_hours), 1),
    .groups = "drop"
  ) |>
  arrange(desc(mean_score))

dir.create("outputs", showWarnings = FALSE)
write_csv(course_summary, "outputs/course_summary.csv")

score_distribution <- ggplot(scores, aes(x = final_score)) +
  geom_histogram(binwidth = 5, fill = "steelblue", colour = "white") +
  labs(
    title = "Distribution of Final Scores",
    x = "Final score",
    y = "Number of students"
  ) +
  theme_minimal()

hours_vs_score <- ggplot(scores, aes(x = study_hours, y = final_score)) +
  geom_point(alpha = 0.5, colour = "steelblue") +
  geom_smooth(method = "lm", formula = y ~ x, se = FALSE, colour = "firebrick") +
  labs(
    title = "Study Hours vs Final Score",
    x = "Weekly study hours",
    y = "Final score"
  ) +
  theme_minimal()

ggsave("outputs/score_distribution.png", score_distribution,
       width = 7, height = 4.5, dpi = 150)
ggsave("outputs/hours_vs_score.png", hours_vs_score,
       width = 7, height = 4.5, dpi = 150)

print(course_summary)
cat("Correlation (study hours, final score):",
    round(cor(scores$study_hours, scores$final_score), 2), "\n")
