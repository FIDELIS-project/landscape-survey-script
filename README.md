# landscape-survey-script
Scripts used in the FIDELIS landscape survey analysis

## Folder : spreadsheet_editor_analyses

The following files contain the answers to the questions that were designed as matrices, with or without a free text field allowing extra precisions. These files were worked on and analysed in Excel.

### Matrices regarding challenges

For each topic ("Digital object management challenges", "Organisational challenges", "Technical challenges", respondents were first asked to indicate the difficulties and needs they encounter in a controlled matrix: on the y-axis, a list of eight categories derived from the TTRAM (Transparent Trustworthy Repository Attributes Matrix) ; on the x-axis, a 5-point scale ranging from “no challenges” to “critical challenges”. Then, an open-ended question (“What are the major challenges and needs your
repository faces in terms of digital object management?”) allowed them to identify key challenges
and provide more details, if they wished.
More specifically the questions were :
- Q16: To what extent does your repository face challenges and needs in terms of digital object management activities and functions? [Matrix]
- Q17: What are the major challenges and needs your repository faces in terms of digital object management? [Free text]
- Q29: To what extent does your repository face challenges and needs in terms of organisational infrastructure activities and functions? [Matrix]
- Q30: What are the major challenges and needs your repository faces in terms of organisational infrastructure? [Free text]
- Q40: To what extent does your repository face challenges and needs in terms of technology and security activities and functions? [Matrix]
- Q41: What are the major challenges and needs your repository faces in terms of technology and security? [Free text]

The answers to the matrices are in the following files :
- Q16_Q17_matrix.csv : answers to the matrix of challenges regarding digital object management
- Q29_Q30_matrix.csv : answers to the matrix regarding organisational challenges
- Q40_Q41_matrix.csv : answers to the matrix regarding technical challenges

The open-ended questions were first encoded (to allow regroupings and calculations) and the mapped against the categories of the TTRAM :
- Q16_Q17_matrix_challenges_do_management.xlsx.zip
- Q16_Q17_other_coded.csv : answers to the free text field ("Other") regarding digital object management
- Q29_Q30_other_coded.csv : answers to the free text field ("Other") regarding organisational challenges. These answers were simplified, coded, and mapped against entries of the TTRAM.
- Q40_Q41_other_coded.csv : answers to the free text field ("Other") regarding technical challenges

### Free text matrices

For free text matrices, the respondents were asked to cite up to five items and specify the purpose for each of them in a free text matrix. Free text matrices were proposed for : metadata schemas, catalogues and registries, resources and services, standards.
For the analysis, metadata schemas were normalised and regrouped, and the purposes were encoded (to allow regroupings and calculations).
As described in the report, there was some confusion among respondents between catalogues and registries, on one hand, and resources and services, on the other hand ; the decision was then made to analyse them together, hence the regrouped files.

More specifically the questions were :
- Q23 : What are the main metadata schemas your repository uses? Please add up to 5 main metadata schemas, and for each schema indicate for what purpose(s) it is used. 
- Q27 : What are the main catalogues or registries your repository uses for digital object management? Please add up to 5 main catalogues or registries, and for each catalogue or registry indicate for which purposes it is used, e.g., for which digital objects and metadata elements, PIDs, licenses, and/or for which Activity/Function (e.g., Deposit & Appraisal, Curation, Quality & Compliance, Access, Reuse, Preservation, etc.)
- Q28 :What are the main shared resources or services or federated systems your repository uses for managing digital objects? Please add up to 5 main resources, and indicate for each of them for which purposes it is used, e.g., for which Activity/Function (e.g., Deposit &amp; Appraisal, Curation, Quality &amp; Compliance, Access, Reuse, Preservation, etc.). 
- Q44 : What (other) main standards, best practices and solutions does your repository use for its technology and security management? Please add up to 5 main standards, best practices and solutions and indicate for what purpose it is used.

Answers and analyses are in the following files :
- Q23_free_text_matrix_metadata.xlsx.zip : Excel file used for treatment
- Q23_metadata_schemas_purposes.csv : purposes cited, encoded
- Q23_metadata_schemas_used.csv : metadata schemas cited, encoded and regrouped
- Q27_Q28_free_text_matrix_catalogue_services.xlsx.zip : Excel file used for treatment
- Q27_Q28_catalogue_registries.csv : catalogues and registries cited in Q27
- Q27_Q28_merged_purposes.csv : purposes cited for both questions, encoded
- Q27_Q28_merged_services.csv : catalogues, registries, purposes and services cited for both questions, encoded
- Q27_Q28_resources_services.csv : resources and services cited in Q28
- Q44_free_text_matrix_standards.xlsx.zip : Excel file used for treatment
- Q44_matrix_standards_purposes_validation_list.csv : list for encoding
- Q44_matrix_standards.csv : standards cited, encoded against the list

### Licenses

The respondents were asked to specify which licence(s) they used for four categories of digital
objects: metadata, data, code/software, and other digital objects with a request to precise which
digital object the licence applies to.
More specifically, the questions were as follows:
- Q32: For the reuse of metadata, which licence(s) does your repository apply? (Q32)
- Q33:  For the reuse of data, which licence(s) does your repository apply? (Q33)
- Q34: For the reuse of code/software, which licence(s) does your repository apply? (Q34)
- Q35: For the reuse of digital objects other than metadata, data or code/software, which licence(s)
does your repository apply? Please specify the type of digital object and the licence(s) (Q35)

Q32_Q33_Q34_Q35_licences.xlsx.zip: Excel file used for treatment
Q32_Q33_Q34_Q35_answers.csv: the untreated, anonymized answers
Q32_Q33_Q34_Q35_data_licences.csv: the treated answers regarding data licences
Q32_Q33_Q34_Q35_metadata_licences.csv: the treated answers regarding metadata licences
Q32_Q33_Q34_Q35_software_licences.csv: the treated answers regarding software licences
Q32_Q33_Q34_Q35_other_licences.csv: the treated answers regarding licences for other types of content
