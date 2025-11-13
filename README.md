# Depression Risk Factors Analysis

A comprehensive statistical analysis examining the determinants of depression among young adults using the National Longitudinal Study of Adolescent to Adult Health (Add Health) dataset.

[![View Project](https://img.shields.io/badge/View-Live%20Demo-blue?style=for-the-badge)](https://harshm27.github.io/depression-risk-analysis/)
[![R](https://img.shields.io/badge/R-276DC3?style=for-the-badge&logo=r&logoColor=white)](https://www.r-project.org/)
[![HTML5](https://img.shields.io/badge/HTML5-E34F26?style=for-the-badge&logo=html5&logoColor=white)](https://developer.mozilla.org/en-US/docs/Web/HTML)

## Project Overview

This research investigates the multifaceted determinants of depression among young adults, examining how social relationships, family dynamics, socioeconomic factors, and demographic characteristics collectively influence depression diagnosis rates.

### Key Research Questions
- How do peer interactions and family relationships influence depression risk?
- What role do income, employment, and public assistance play in mental health outcomes?
- Are there significant gender-based variations in depression risk factors?
- How do multiple factors interact to impact depression diagnosis rates?

## Dataset

**Source:** Add Health (ICPSR Study #21600) - Wave III Data  
**Population:** Young Adults (ages 18-26)  
**Sample:** Nationally representative longitudinal study  
**Variables:** 15+ predictors across 3 categories

### Variable Categories
- **Social Support** (7 variables): Peer interactions, family relationships, parental closeness
- **Socioeconomic** (6 variables): Income, employment, education, welfare receipt
- **Demographics** (2 variables): Gender, race

## Methodology

### Data Processing
1. **Extraction**: Consolidated data from 42 .dta files from ICPSR_21600 dataset
2. **Cleaning**: Removed missing values and invalid responses
3. **Recoding**: Systematically transformed variables into meaningful factors
4. **Validation**: Performed structural analysis and summary statistics

### Statistical Analysis
- **Exploratory Data Analysis**: Comprehensive visualizations including bar plots, heatmaps, line plots, and mosaic plots
- **Correlation Analysis**: Examined relationships between all predictors
- **Logistic Regression**: Multiple model specifications
  - Baseline model (SES + demographics)
  - Full model (all predictors)
  - Stepwise selection (AIC-optimized)
  - Gender-stratified models
  - Interaction models (sadness × income)

## Key Findings

### Primary Discoveries
1. **Social Support as Protective Factor**: Frequent peer interactions and strong family relationships consistently predict lower depression rates
2. **Gender Disparities**: Females exhibit significantly higher depression diagnosis rates across all conditions
3. **Emotional State**: Self-reported sadness emerged as the strongest predictor of depression diagnosis
4. **Parental Relationships**: Closeness to biological parents shows significant association with outcomes
5. **Socioeconomic Interactions**: Peer support effects are moderated by income and welfare status

## Visualizations

The analysis includes comprehensive visualizations:
- **Bivariate Analysis**: Depression rates across all categorical predictors
- **Trend Analysis**: Depression rates by peer interaction frequency and gender
- **Interaction Plots**: Three-way relationships (peer support × welfare × gender)
- **Heatmaps**: Depression rates by gender and income combinations
- **Confidence Intervals**: Statistical uncertainty visualization

## Technical Stack

### R Packages
- `haven` - Read Stata .dta files
- `tidyverse` - Data manipulation and visualization
- `ggplot2` - Advanced plotting
- `dplyr` - Data wrangling
- `corrplot` - Correlation matrices
- `ggmosaic` - Mosaic plots

### Analysis Methods
- Logistic Regression (GLM)
- Stepwise Model Selection
- Stratified Analysis
- Interaction Modeling
- Cross-tabulation

## Project Structure

```
.
├── index.html                          # Interactive project website
├── HCA_Individual_Assg1.Rmd           # R Markdown analysis code
├── HCA_Individual_Assg1.html          # Knitted R analysis output
├── Dataset_Extraction.R               # Data extraction script
├── cleaned_addhealth_data.csv         # Initial cleaned dataset
├── recoded_addhealth_data.csv         # Recoded variables
├── complete_addhealth_data.csv        # Final analysis dataset
└── README.md                          # This file
```

## Getting Started

### Prerequisites
- R (version 4.0+)
- RStudio (recommended)
- Required R packages (see Technical Stack)

### Installation

1. Clone the repository
```bash
git clone https://github.com/harshm27/depression-risk-analysis.git
cd depression-risk-analysis
```

2. Install required R packages
```r
install.packages(c("haven", "tidyverse", "ggplot2", "dplyr", "corrplot", "ggmosaic"))
```

3. Open and run the R Markdown file
```r
# In RStudio
rmarkdown::render("HCA_Individual_Assg1.Rmd")
```

### View the Interactive Website

Simply open `index.html` in your web browser, or visit the [live demo](https://harshm27.github.io/depression-risk-analysis/).

## Reproducing the Analysis

1. **Data Access**: Obtain Add Health data from [ICPSR](https://www.icpsr.umich.edu/web/ICPSR/studies/21600)
2. **Data Extraction**: Run `Dataset_Extraction.R` to extract variables
3. **Analysis**: Execute `HCA_Individual_Assg1.Rmd` to reproduce all analyses
4. **Visualization**: All plots and tables will be regenerated

## Citation

If you use this analysis or methodology in your work, please cite:

```
Depression Risk Factors Analysis using Add Health Dataset
Imperial College London, 2025
https://github.com/harshm27/depression-risk-analysis
```

## Academic Context

**Institution:** Imperial College London  
**Program:** Healthcare Analytics  
**Semester:** 3  
**Year:** 2025  
**Type:** Individual Assignment

## License

This project is for academic purposes. The Add Health dataset is subject to restricted use agreements. Please refer to [ICPSR usage terms](https://www.icpsr.umich.edu/web/ICPSR/studies/21600) for data access and usage restrictions.

## Contributing

This is an academic project, but feedback and suggestions are welcome! Feel free to:
- Open an issue for questions or suggestions
- Submit a pull request for improvements
- Share your own analyses using similar methodologies

## Contact

For questions or collaboration opportunities, please reach out through GitHub issues.

## Acknowledgments

- **Add Health Study**: University of North Carolina at Chapel Hill
- **Data Source**: Inter-university Consortium for Political and Social Research (ICPSR)
- **Institution**: Imperial College London
- **Course**: Healthcare Analytics

---

<p align="center">
  <strong>Star this repository if you found it helpful!</strong>
</p>

<p align="center">
  Made for Healthcare Analytics | Imperial College London
</p>

