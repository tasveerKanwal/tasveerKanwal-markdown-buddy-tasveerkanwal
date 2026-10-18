> **AI Assistance Declaration**: I used ChatGPT (GPT 5.6 Luna) for README structure ideas, the README draft and `.Rmd` formatting suggestions, and Claude (Sonnet 5.5, Anthropic) for project design, the R scripts, the `.Rmd`, review, and a first draft of this reflection, which I then edited. Prompts used: see `Appendix.md`. I verified outputs using GitHub's Markdown preview, RStudio, a comparison with the tidyverse dplyr README, and a Google Sheets cross-check. All final calculations are done by myself. I am responsible for the accuracy and originality of this work.

# Reflection

## 1. How did AI help with the documentation, and where did it fall short?

AI was most useful for structure. ChatGPT gave me a full list of README sections in seconds, and the refinement prompt turned it into a clean outline that I could reuse for my own project. It also drafted a README that already had a dataset table, a project tree and install steps, which saved a lot of typing.

It fell short wherever the documentation had to match my actual project. ChatGPT invented plot filenames, wrote example code with a different pipe style from my script, and left generic sentences where results should be. Its "syntax check" reported that everything was correct and only suggested spacing. For the `.Rmd`, it mixed README advice with R Markdown advice, and one of its examples nested a code chunk inside another fenced block, which would not render properly.

## 2. How did I verify the outputs, and what did I change?

I treated every response as a draft. I compared ChatGPT's section list with the dplyr README on GitHub and noticed that the real repository links a cheatsheet, which the AI list did not mention. I ran both R scripts in RStudio so the README could use real numbers, and I checked one course average by hand in Google Sheets. I previewed the README on GitHub and knitted the `.Rmd` to see that headings, tables, plots and code chunks rendered.

The main edits were correcting filenames, rewriting the example code to match my script, adding an MIT `LICENSE` file after the critique prompt, replacing generic key insights with real results, and adding a note that the strong correlation exists because the data is synthetic. Each change is listed in the README disclosure and in the appendix.

## 3. What are the ethical considerations, and what would I do differently?

The main issue is honesty about what the AI did. I used two tools, ChatGPT for the documentation drafts and Claude for project design, the scripts and first drafts of some files, so I disclosed both, listed the prompts, and described what I changed. The assignment also says AI should act as a design assistant rather than a code generator, and having Claude draft the scripts goes further than that. I mention it openly so it can be judged, and I read, ran and checked the code myself. I used only synthetic data, so no personal information went to any AI tool.

Next time I would write my own project and scripts first, then use AI only for structure and wording. I would also ask ChatGPT for specific critiques, such as "list anything in this README that does not match my script", because the general "check my syntax" prompt gave almost nothing useful.
