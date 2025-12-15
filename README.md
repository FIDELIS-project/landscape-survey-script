# landscape-survey-script

Scripts used in the FIDELIS landscape survey analysis

## Project Structure

### `analyses/`

This directory contains three main analyses of the survey data:

#### `01_main_visualization/`
Contains the primary analysis script (`survey_visualization.Rmd`) that processes and visualizes the complete survey dataset. This R Markdown file generates comprehensive visualizations and statistical analyses for the FIDELIS Repository Landscape Survey, producing HTML reports with charts, tables, and summary statistics across all survey questions.

#### `02_repository_capabilities/`
Contains detailed analyses for section 3.2 of the report: "Repository capabilities and standards". This includes:
- **SPSS files**: Syntax and data files (`Landscape_survey_syntax.sps`, `Landscape_survey_data.sav`) used to process close-ended questions, convert variables to numeric format, and handle free-text matrix responses
- **Spreadsheet analyses**: Excel-processed data organized into three categories:
  - Challenge matrices (Q16/17, Q29/30, Q40/41) mapping repository challenges against TTRAM categories
  - Free-text matrices (Q23, Q27/28, Q44) analyzing metadata schemas, catalogues, registries, resources, and standards
  - License analyses (Q32-35) documenting licenses used for metadata, data, software, and other digital objects

#### `03_geographical_map/`
Contains scripts (`survey_visualisation.qmd`) that create geographical visualizations showing the distribution of survey respondents across European countries. This analysis produces map plots showing respondent density by country, with outputs saved to the `plots/` directory.

## Data

M. Verburg; T. Jouneau; L. Horton; G. van Geest; S. Tujunen; J. Kallio; T. Paulsen; P. Conzett; T. Alaterä; M. Kleemola; J. Meijer; Å.J. Holthe-Tveit; A.K. Forshaug, 2025, "Repository landscape data for the FIDELIS project", https://doi.org/10.17026/SS/XX8PBN, DANS Data Station Social Sciences and Humanities, V1
