> **AI Assistance Declaration**: I used ChatGPT (GPT 5.6 Luna) for README structure ideas, the README draft and `.Rmd` formatting suggestions, and Claude (Sonnet 5.5, Anthropic) for project design, the R scripts, the `.Rmd`, review, and first drafts of `Reflection.md` and this appendix. Prompts used: all prompts are listed below. I verified outputs using GitHub's Markdown preview, RStudio (running the scripts and knitting the `.Rmd`), a comparison with the tidyverse dplyr README, and a cross-check of one course average in Google Sheets. All final calculations are done by myself. I am responsible for the accuracy and originality of this work.

# Appendix: AI Prompts and Key Responses

All ChatGPT prompts were sent in one chat on 17 October 2026 using GPT 5.6 Luna. Responses are summarized, with short excerpts where the wording matters.

## Step 1: README structure

**Prompt 1 (seed)**

```text
Explain what sections a good GitHub README for an R data analysis project should include.
```

Key response: a 13-part list covering title and overview, objectives, dataset, tools, project structure, installation, methodology, visualizations, key findings, how to run, limitations, author, and license. Each part had an example. The pasted text also contained image captions, a checklist widget and "Convert to PDF" labels, which I removed.

**Prompt 2 (refinement)**

```text
Revise the sections list so it's concise and uses Markdown headers and bullet formatting.
```

Key response: a short outline with one `##` heading and one bullet per section (Objectives, Dataset, Tools and Technologies, Project Structure, Installation and Setup, Methodology, Visualizations and Results, Key Insights, How to Run, Limitations and Future Work, Author, License).

**Prompt 3 (critique)**

```text
Check the Markdown syntax for correctness and readability.
```

Key response: ChatGPT said the syntax was correct and suggested consistent spacing and wording. It found no actual errors, so this check added little by itself.

**Verification:** I compared the outline with the README of `tidyverse/dplyr`. The dplyr README links a cheatsheet, which ChatGPT's list did not mention. The `#` and `-` markers were also lost when I copied the second and third responses, so I recopied them using the copy button.

## Step 2: README.md

**Prompt 4 (seed)**

```text
Here's a summary of my R project: "Synthetic Student Scores Analysis" is an R project that analyzes a synthetic dataset of 300 students, with columns student_id, course, study_hours, attendance and final_score. The script scripts/generate_data.R creates the dataset (data/student_scores.csv) using set.seed(2026). The script scripts/analyze_scores.R reads the CSV, summarizes mean and median scores by course, and saves a score histogram and a study-hours scatter plot with a regression line to an outputs/ folder. Dependencies: readr, dplyr, ggplot2. Generate a professional README.md file using Markdown.
```

Key response: a complete README with objectives, dataset table, tools, project structure, methodology, visualizations, installation, how to run, limitations, author and license. It guessed the plot filenames (`score_histogram.png`, `study_hours_scatter.png`) and said they were illustrative.

**Prompt 5 (refinement)**

```text
Add sections for Installation, Example Code, and License. Keep tone concise and professional.
```

Key response: a shorter README with Installation, Example Code and License sections. The example code used `%>%` and `na.rm = TRUE`, which do not match my script.

**Prompt 6 (critique)**

```text
Review the Markdown for syntax errors and suggest 2 improvements for clarity.
```

Key response: no syntax errors found. The two improvements were (1) state in the Dataset section that `scripts/generate_data.R` creates the CSV and that `set.seed(2026)` makes it reproducible, and (2) name a specific license and add a `LICENSE` file rather than a vague statement.

## Step 3: analyze_scores.Rmd

**Prompt 7 (seed)**

```text
Here's my R script description. The script analyze_scores.R reads data/student_scores.csv (300 synthetic students with student_id, course, study_hours, attendance, final_score), calculates the number of students and the mean and median final score per course with dplyr, saves the summary to outputs/course_summary.csv, and saves a histogram of final scores and a scatter plot of study hours against final score with a regression line using ggplot2. Suggest Markdown formatting and code block examples.
```

Key response: README-style sections (Analysis Steps, Example Code, Output Files, Dependencies) with a table of outputs. Plot filenames were guessed again.

**Prompt 8 (refinement)**

```text
Add syntax highlighting and improve section organization (e.g., # Purpose, ## Inputs, ## Outputs).
```

Key response: a reorganized layout with Purpose, Inputs, Analysis, Outputs, Dependencies, How to Run and Example Code, using ` ```r ` blocks.

**Prompt 9 (critique)**

```text
Is the Markdown consistent with RMarkdown best practices?
```

Key response: ChatGPT said GitHub Markdown and R Markdown are not the same, and recommended a YAML header and executable `{r}` chunks. Its own example placed a `{r}` chunk inside a plain fenced block, which would close the outer block early, so I did not copy it.

## Verification and improvement log

| Check | How | Finding | Action |
| ----- | --- | ------- | ------ |
| Section list vs. real README | Read `tidyverse/dplyr` README | Cheatsheet link missing from ChatGPT's list | Noted as a gap in the AI outline |
| Pasted Markdown | Read the copied text | Markers lost, widget text and captions included | Recopied and cleaned |
| README filenames | Compared with files created by the script | Guessed plot names did not match | Used `score_distribution.png` and `hours_vs_score.png` |
| README example code | Compared with `analyze_scores.R` | `%>%` and `na.rm` did not match the script | Rewrote to match |
| License | Followed ChatGPT critique | Statement without a license file | Added MIT `LICENSE` |
| Key Insights | Compared with R output | Generic text only | Replaced with real results and a synthetic-data caveat |
| Results | Ran both scripts in RStudio, cross-checked the Statistics mean in Google Sheets | Values agree | Table in README kept |
| Rmd structure | Compared ChatGPT's output with R Markdown conventions | README-style layout, no YAML header, nested fence error | Built a proper `.Rmd` with YAML and runnable chunks |
| Rendering | Previewed README on GitHub and knitted the `.Rmd` | Headers, tables, images and chunks render | No further changes |
