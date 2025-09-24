* Encoding: UTF-8.

NEW FILE. 
DATASET CLOSE ALL.

GET DATA
  /TYPE=XLSX
  /FILE='[File location]\original_data.xlxs'
  /SHEET=name 'Sheet1'
  /CELLRANGE=FULL
  /READNAMES=ON
  /DATATYPEMIN PERCENTAGE=100.0
  /HIDDEN IGNORE=YES.
EXECUTE.


*Saving and processing data in sav format.
SAVE OUTFILE='[File location]\Landscape_survey_data.sav'.
GET FILE='[File location]\Landscape_survey_data.sav'.

*1. Variables are renamed for clarity and to simplify data processing. In addition, the renaming will take into account the recoding of variables
  as a new variables (Q3_1X > Q3_1).
RENAME VARIABLES
(WhatisthenameoftherepositoryyourepresentIfyourepresentmultiplere = Q1X)
(WhatisyourroleintherepositoryIfyourjobcoversmultiplerolespleases = Q2_1X)
(Othernamely = Q2_2X)
(InwhichcountryisyourrepositorylocatedIfyourrepositoryisrelatedto = Q3_1X)
(Othernamely_A = Q3_2X)
(Pleaseprovidethelinktoyourrepository’swebsite = Q4X)
(Pleaseprovideallpersistentidentifiersyourrepositorycanbeidentifi = Q5_1X)
(Pleaseprovideallpersistentidentifiersyourrepositorycanbeidenti_A = Q5_2X)
(Pleaseprovideallpersistentidentifiersyourrepositorycanbeidenti_B = Q5_3X)
(Pleaseprovideallpersistentidentifiersyourrepositorycanbeidenti_C = Q5_4X)
(Whichtypebestdescribesyourrepository = Q6_1X)
(Othernamely_B = Q6_2X)
(Isyourrepositorydomainspecificorgeneralist = Q7X)
(WhichdomainsdoesyourrepositoryserveSelectallthatapply = Q8X)
(WhichcommunityiesisyourrepositoryapartofSelectallapplicable = Q9_1X)
(Othernamely_C = Q9_otherX)
(Whatisthelegalstatusofyourrepository = Q10_1X)
(Othernamely_D = Q10_2X)
(WhatisaretheprimarycontenttypesinyourrepositoryholdingsSelectall = Q11_1X)
(Othernamely_E = Q11_2X)
(Pleaseprovideadescriptionofyourrepositoryholdings = Q12X)
(Whatlevelsofretentioncurationandpreservationdoesyourrepositorypr = Q13_1X)
(Whatlevelsofretentioncurationandpreservationdoesyourrepository_A = Q13_2X)
(Whatlevelsofretentioncurationandpreservationdoesyourrepository_B = Q13_3X)
(Whatlevelsofretentioncurationandpreservationdoesyourrepository_C = Q13_4X)
(Whatlevelsofretentioncurationandpreservationotherthantheoneslist = Q13_5_otherX)
(Howlonghasyourrepositoryexistedinitscurrentform = Q14X)
(WhatformalcertificationsdoesyourrepositoryhaveYouwillbeabletomen = Q15_1)
(WhatformalcertificationsdoesyourrepositoryhaveYouwillbeabletom_A = Q15_2)
(WhatformalcertificationsdoesyourrepositoryhaveYouwillbeabletom_B = Q15_3)
(WhatformalcertificationsdoesyourrepositoryhaveYouwillbeabletom_C = Q15_4)
(Whatothercertificationsdoesyourrepositoryhaveorarerelevantforyou = Q15_5_otherX)
(Towhatextentdoesyourrepositoryfacechallengesandneedsintermsofdig = Q16_1X)
(Towhatextentdoesyourrepositoryfacechallengesandneedsintermsofd_A = Q16_2X)
(Towhatextentdoesyourrepositoryfacechallengesandneedsintermsofd_B = Q16_3X)
(Towhatextentdoesyourrepositoryfacechallengesandneedsintermsofd_C = Q16_4X)
(Towhatextentdoesyourrepositoryfacechallengesandneedsintermsofd_D = Q16_5X)
(Towhatextentdoesyourrepositoryfacechallengesandneedsintermsofd_E = Q16_6X)
(Towhatextentdoesyourrepositoryfacechallengesandneedsintermsofd_F = Q16_7X)
(Towhatextentdoesyourrepositoryfacechallengesandneedsintermsofd_G = Q16_8X)
(Whatarethemajorchallengesandneedsyourrepositoryfacesintermsofdig = Q17X)
(Thesewerethecorequestionsondigitalobjectmanagement.Wouldyouliket = Q18X)
(OnwhatplatformssoftwaredoesyourrepositoryoperateSelectallapplica = Q19_1X)
(Othernamely_F = Q19_otherX)
(Whattechnologiesorservicesdoyouusetodeploytheplatformsoftwareonw = Q20_1X)
(Othernamely_G = Q20_2X)
(DoesyourrepositoryusepersistentidentifiersPIDsfordigitalobjectso = Q21X)
(WhichPersistentIdentifiersPIDshasyourrepositoryimplementedorisim = Q22_1X)
(Othernamely_H = Q22_otherX)
(WhatarethemainmetadataschemasyourrepositoryusesPleaseaddupto5mai = Q23_1AX)
(WhatarethemainmetadataschemasyourrepositoryusesPleaseaddupto5m_A = Q23_1BX)
(WhatarethemainmetadataschemasyourrepositoryusesPleaseaddupto5m_B = Q23_2AX)
(WhatarethemainmetadataschemasyourrepositoryusesPleaseaddupto5m_C = Q23_2BX)
(WhatarethemainmetadataschemasyourrepositoryusesPleaseaddupto5m_D = Q23_3AX)
(WhatarethemainmetadataschemasyourrepositoryusesPleaseaddupto5m_E = Q23_3BX)
(WhatarethemainmetadataschemasyourrepositoryusesPleaseaddupto5m_F = Q23_4AX)
(WhatarethemainmetadataschemasyourrepositoryusesPleaseaddupto5m_G = Q23_4BX)
(WhatarethemainmetadataschemasyourrepositoryusesPleaseaddupto5m_H = Q23_5AX)
(WhatarethemainmetadataschemasyourrepositoryusesPleaseaddupto5m_I = Q23_5BX)
(Howaremetadataschemasimplementedinyourrepository = Q24_1X)
(Othernamely_I = Q24_otherX)
(Doesyourrepositoryusesemanticartefactse.g.controlledvocabularies = Q25X)
(Howaresemanticartefactsimplementedinyourrepository = Q26_1X)
(Othernamely_J = Q26_otherX)
(Whatarethemaincataloguesorregistriesyourrepositoryusesfordigital = Q27_1AX)
(Whatarethemaincataloguesorregistriesyourrepositoryusesfordigit_A = Q27_1BX)
(Whatarethemaincataloguesorregistriesyourrepositoryusesfordigit_B = Q27_2AX)
(Whatarethemaincataloguesorregistriesyourrepositoryusesfordigit_C = Q27_2BX)
(Whatarethemaincataloguesorregistriesyourrepositoryusesfordigit_D = Q27_3AX)
(Whatarethemaincataloguesorregistriesyourrepositoryusesfordigit_E = Q27_3BX)
(Whatarethemaincataloguesorregistriesyourrepositoryusesfordigit_F = Q27_4AX)
(Whatarethemaincataloguesorregistriesyourrepositoryusesfordigit_G = Q27_4BX)
(Whatarethemaincataloguesorregistriesyourrepositoryusesfordigit_H = Q27_5AX)
(Whatarethemaincataloguesorregistriesyourrepositoryusesfordigit_I = Q27_5BX)
(Whatarethemainsharedresourcesorservicesorfederatedsystemsyourrep = Q28_1AX)
(Whatarethemainsharedresourcesorservicesorfederatedsystemsyourr_A = Q28_1BX)
(Whatarethemainsharedresourcesorservicesorfederatedsystemsyourr_B = Q28_2AX)
(Whatarethemainsharedresourcesorservicesorfederatedsystemsyourr_C = Q28_2BX)
(Whatarethemainsharedresourcesorservicesorfederatedsystemsyourr_D = Q28_3AX)
(Whatarethemainsharedresourcesorservicesorfederatedsystemsyourr_E = Q28_3BX)
(Whatarethemainsharedresourcesorservicesorfederatedsystemsyourr_F = Q28_4AX)
(Whatarethemainsharedresourcesorservicesorfederatedsystemsyourr_G = Q28_4BX)
(Whatarethemainsharedresourcesorservicesorfederatedsystemsyourr_H = Q28_5AX)
(Whatarethemainsharedresourcesorservicesorfederatedsystemsyourr_I = Q28_5BX)
(Towhatextentdoesyourrepositoryfacechallengesandneedsintermsoforg = Q29_1X)
(Towhatextentdoesyourrepositoryfacechallengesandneedsintermsofo_A = Q29_2X)
(Towhatextentdoesyourrepositoryfacechallengesandneedsintermsofo_B = Q29_3X)
(Towhatextentdoesyourrepositoryfacechallengesandneedsintermsofo_C = Q29_4X)
(Towhatextentdoesyourrepositoryfacechallengesandneedsintermsofo_D = Q29_5X)
(Towhatextentdoesyourrepositoryfacechallengesandneedsintermsofo_E = Q29_6X)
(Towhatextentdoesyourrepositoryfacechallengesandneedsintermsofo_F = Q29_7X)
(Towhatextentdoesyourrepositoryfacechallengesandneedsintermsofo_G = Q29_8X)
(Towhatextentdoesyourrepositoryfacechallengesandneedsintermsofo_H = Q29_9X)
(Towhatextentdoesyourrepositoryfacechallengesandneedsintermsofo_I = Q29_10X)
(Towhatextentdoesyourrepositoryfacechallengesandneedsintermsofo_J = Q29_11X)
(Towhatextentdoesyourrepositoryfacechallengesandneedsintermsofo_K = Q29_12X)
(Towhatextentdoesyourrepositoryfacechallengesandneedsintermsofo_L = Q29_13X)
(Towhatextentdoesyourrepositoryfacechallengesandneedsintermsofo_M = Q29_14X)
(Towhatextentdoesyourrepositoryfacechallengesandneedsintermsofo_N = Q29_15X)
(Towhatextentdoesyourrepositoryfacechallengesandneedsintermsofo_O = Q29_16X)
(Whatarethemajorchallengesandneedsyourrepositoryfacesintermsoforg = Q30X)
(Thesewerethecorequestionsonorganisationalinfrastructure.Wouldyou = Q31X)
(Forthereuseofmetadatawhichlicensesdoesyourrepositoryapply = Q32X)
(Forthereuseofdatawhichlicensesdoesyourrepositoryapply = Q33X)
(Forthereuseofcodesoftwarewhichlicensesdoesyourrepositoryapply = Q34X)
(Forthereuseofdigitalobjectsotherthanmetadatadataorcodesoftwarewh = Q35X)
(Doesyourrepositoryhaveacontinuityagreementwithanotherorganisatio = Q36X)
(Ifyouhaveimplementedorareimplementingacontinuityagreementwhattyp = Q37X)
(Towhatextentdoesyourrepositoryhavesustainablefundingtocarryoutyo = Q38_1X)
(Othernamely_K = Q38_2X)
(WhatarethemainfundingsourcesofyourrepositorySelectallapplicable = Q39_1X)
(Othernamely_L = Q39_otherX)
(Towhatextentdoesyourrepositoryfacechallengesandneedsintermsoftec = Q40_1X)
(Towhatextentdoesyourrepositoryfacechallengesandneedsintermsoft_A = Q40_2X)
(Towhatextentdoesyourrepositoryfacechallengesandneedsintermsoft_B = Q40_3X)
(Towhatextentdoesyourrepositoryfacechallengesandneedsintermsoft_C = Q40_4X)
(Towhatextentdoesyourrepositoryfacechallengesandneedsintermsoft_D = Q40_5X)
(Whatarethemajorchallengesandneedsyourrepositoryfacesintermsoftec = Q41X)
(Thesewerethecorequestionsontechnologyandsecurity.Wouldyouliketoa = Q42X)
(Whatprocessesandordocumentationdoesyourrepositoryusetoensureappr = Q43_1X)
(Othernamely_M = Q43_2X)
(Whatothermainstandardsbestpracticesandsolutionsdoesyourrepositor = Q44_1AX)
(Whatothermainstandardsbestpracticesandsolutionsdoesyourreposit_A = Q44_1BX)
(Whatothermainstandardsbestpracticesandsolutionsdoesyourreposit_B = Q44_2AX)
(Whatothermainstandardsbestpracticesandsolutionsdoesyourreposit_C = Q44_2BX)
(Whatothermainstandardsbestpracticesandsolutionsdoesyourreposit_D = Q44_3AX)
(Whatothermainstandardsbestpracticesandsolutionsdoesyourreposit_E = Q44_3BX)
(Whatothermainstandardsbestpracticesandsolutionsdoesyourreposit_F = Q44_4AX)
(Whatothermainstandardsbestpracticesandsolutionsdoesyourreposit_G = Q44_4BX)
(Whatothermainstandardsbestpracticesandsolutionsdoesyourreposit_H = Q44_5AX)
(Whatothermainstandardsbestpracticesandsolutionsdoesyourreposit_I = Q44_5BX)
.




*CONVERT CATEGORICAL STRING VARIABLES RELEVANT TO T5.2. INTO NUMERIC VARIABLES.
*Values of different lengths give an error in SPSS, so first the lengths of the string variables to be recoded are adjusted.
ALTER TYPE Q16_1X TO Q16_8X Q18X Q29_1X TO Q29_16X Q31X Q40_1X TO Q40_5X
  Q42X Q20_1X Q21X Q25X Q36X Q38_1X (A100).
EXECUTE.


*Convert other categorical string variables (no missing information) into numeric variables.
AUTORECODE VARIABLES= Q16_1X TO Q16_8X Q18X Q29_1X TO Q29_16X Q31X
  Q40_1X TO Q40_5X Q42X  /INTO Q16_1 TO Q16_8 Q18 Q29_1 TO Q29_16 Q31 Q40_1 TO Q40_5 Q42.
EXECUTE.

*In a few variables, one value did not get any response, so the autorecode coded the values incorrectly
  -> further editing of the values after autorecode.
RECODE Q29_1 Q29_8 (1=2) (2=3) (3=4) (4=5).



*Convert categorical string variables (with missing information) into numeric variables.
*First, the missing information at the beginning of the frequencies is coded last alphabetically.
RECODE Q20_1X Q21X Q25X Q36X Q38_1X (' '='ö').
EXECUTE.

*Autorecode the rest into numeric variables.
AUTORECODE VARIABLES= Q20_1X Q21X Q25X Q36X Q38_1X  /INTO
 Q20_1 Q21 Q25 Q36 Q38_1 /PRINT.
EXECUTE.

*Recode missing information 'ö' into sysmis.
RECODE Q20_1 (9=SYSMIS).
RECODE Q21 Q25 Q36 (6=SYSMIS).
RECODE Q38_1 (7=SYSMIS).
EXECUTE.





*5. Separate the textual dichotomies encoded in one variable into separate numeric variables: Q43, Q19, Q24, Q26, Q22, Q39.
COMPUTE Q43_1 = 0.
IF (CHAR.INDEX(Q43_1X, "Processes and documents that ensure that the repository staff have clear understanding of all storage locations and how they are managed") > 0) Q43_1 = 1.
EXECUTE.
 
COMPUTE Q43_2 = 0.
IF (CHAR.INDEX(Q43_1X, "Strategy for multiple copies of digital objects") > 0) Q43_2 = 1.
EXECUTE.
 
COMPUTE Q43_3 = 0.
IF (CHAR.INDEX(Q43_1X, "Risk management strategies and mechanisms") > 0) Q43_3 = 1.
EXECUTE.
 
COMPUTE Q43_4 = 0.
IF (CHAR.INDEX(Q43_1X, "Procedures for handling and monitoring of storage media") > 0) Q43_4 = 1.
EXECUTE.
 
COMPUTE Q43_5 = 0.
IF (CHAR.INDEX(Q43_1X, "Procedures for deletion of digital objects") > 0) Q43_5 = 1.
EXECUTE.
 
COMPUTE Q43_6 = 0.
IF (CHAR.INDEX(Q43_1X, "Checks to verify that a digital object has not been altered or corrupted") > 0) Q43_6 = 1.
EXECUTE.


*Variable Q19_1X.
COMPUTE Q19_1 = 0.
IF (CHAR.INDEX(Q19_1X, "Archivematica") >0) Q19_1 = 1.
EXECUTE.
 
COMPUTE Q19_2 = 0.
IF (CHAR.INDEX(Q19_1X, "arXiv") >0) Q19_2 = 1.
EXECUTE.
 
COMPUTE Q19_3 = 0.
IF (CHAR.INDEX(Q19_1X, "AsPredicted") >0) Q19_3 = 1.
EXECUTE.
 
COMPUTE Q19_4 = 0.
IF (CHAR.INDEX(Q19_1X, "AtoM") >0) Q19_4 = 1.
EXECUTE.
 
COMPUTE Q19_5 = 0.
IF (CHAR.INDEX(Q19_1X, "bioRxiv") >0) Q19_5 = 1.
EXECUTE.
 
COMPUTE Q19_6 = 0.
IF (CHAR.INDEX(Q19_1X, "Bitbucket") >0) Q19_6 = 1.
EXECUTE.
 
COMPUTE Q19_7 = 0.
IF (CHAR.INDEX(Q19_1X, "CKAN") >0) Q19_7 = 1.
EXECUTE.
 
COMPUTE Q19_8 = 0.
IF (CHAR.INDEX(Q19_1X, "ClinicalTrials.gov") >0) Q19_8 = 1.
EXECUTE.
 
COMPUTE Q19_9 = 0.
IF (CHAR.INDEX(Q19_1X, "Dataverse") >0) Q19_9 = 1.
EXECUTE.
 
COMPUTE Q19_10 = 0.
IF (CHAR.INDEX(Q19_1X, "DigitalCommons") >0) Q19_10 = 1.
EXECUTE.
 
COMPUTE Q19_11 = 0.
IF (CHAR.INDEX(Q19_1X, "Djehuty") >0) Q19_11 = 1.
EXECUTE.
 
COMPUTE Q19_12 = 0.
IF (CHAR.INDEX(Q19_1X, "Dryad") >0) Q19_12 = 1.
EXECUTE.
 
COMPUTE Q19_13 = 0.
IF (CHAR.INDEX(Q19_1X, "DSpace") >0) Q19_13 = 1.
EXECUTE.
 
COMPUTE Q19_14 = 0.
IF (CHAR.INDEX(Q19_1X, "EPrints") >0) Q19_14 = 1.
EXECUTE.
 
COMPUTE Q19_15 = 0.
IF (CHAR.INDEX(Q19_1X, "EThOS (Electronic Theses Online Service)") >0) Q19_15 = 1.
EXECUTE.
 
COMPUTE Q19_16 = 0.
IF (CHAR.INDEX(Q19_1X, "FAIRDOMHub") >0) Q19_16 = 1.
EXECUTE.
 
COMPUTE Q19_17 = 0.
IF (CHAR.INDEX(Q19_1X, "Fedora") >0) Q19_17 = 1.
EXECUTE.
 
COMPUTE Q19_18 = 0.
IF (CHAR.INDEX(Q19_1X, "Figshare") >0) Q19_18 = 1.
EXECUTE.
 
COMPUTE Q19_19 = 0.
IF (CHAR.INDEX(Q19_1X, "Galaxy") >0) Q19_19 = 1.
EXECUTE.
 
COMPUTE Q19_20 = 0.
IF (CHAR.INDEX(Q19_1X, "GitHub") >0) Q19_20 = 1.
EXECUTE.
 
COMPUTE Q19_21 = 0.
IF (CHAR.INDEX(Q19_1X, "GitLab") >0) Q19_21 = 1.
EXECUTE.
 
COMPUTE Q19_22 = 0.
IF (CHAR.INDEX(Q19_1X, "Haplo") >0) Q19_22 = 1.
EXECUTE.
 
COMPUTE Q19_23 = 0.
IF (CHAR.INDEX(Q19_1X, "Hydra") >0) Q19_23 = 1.
EXECUTE.
 
COMPUTE Q19_24 = 0.
IF (CHAR.INDEX(Q19_1X, "Invenio") >0) Q19_24 = 1.
EXECUTE.
 
COMPUTE Q19_25 = 0.
IF (CHAR.INDEX(Q19_1X, "Islandora") >0) Q19_25 = 1.
EXECUTE.
 
COMPUTE Q19_26 = 0.
IF (CHAR.INDEX(Q19_1X, "Janeway") >0) Q19_26 = 1.
EXECUTE.
 
COMPUTE Q19_27 = 0.
IF (CHAR.INDEX(Q19_1X, "myExperiment") >0) Q19_27 = 1.
EXECUTE.
 
COMPUTE Q19_28 = 0.
IF (CHAR.INDEX(Q19_1X, "OJS (Open Journal Systems)") >0) Q19_28 = 1.
EXECUTE.
 
COMPUTE Q19_29 = 0.
IF (CHAR.INDEX(Q19_1X, "OMP (Open Monograph Press)") >0) Q19_29 = 1.
EXECUTE.
 
COMPUTE Q19_30 = 0.
IF (CHAR.INDEX(Q19_1X, "Open Science Framework (OSF)") >0) Q19_30 = 1.
EXECUTE.
 
COMPUTE Q19_31 = 0.
IF (CHAR.INDEX(Q19_1X, "Preservica") >0) Q19_31 = 1.
EXECUTE.
 
COMPUTE Q19_32 = 0.
IF (CHAR.INDEX(Q19_1X, "ProQuest Dissertations & Theses Global") >0) Q19_32 = 1.
EXECUTE.
 
COMPUTE Q19_33 = 0.
IF (CHAR.INDEX(Q19_1X, "PROSPERO") >0) Q19_33 = 1.
EXECUTE.
 
COMPUTE Q19_34 = 0.
IF (CHAR.INDEX(Q19_1X, "Protocols.io") >0) Q19_34 = 1.
EXECUTE.
 
COMPUTE Q19_35 = 0.
IF (CHAR.INDEX(Q19_1X, "Rosetta") >0) Q19_35 = 1.
EXECUTE.
 
COMPUTE Q19_36 = 0.
IF (CHAR.INDEX(Q19_1X, "WorkflowHub") >0) Q19_36 = 1.
EXECUTE.
 
COMPUTE Q19_37 = 0.
IF (CHAR.INDEX(Q19_1X, "Zenodo") >0) Q19_37 = 1.
EXECUTE.
 
COMPUTE Q19_38 = 0.
IF (CHAR.INDEX(Q19_1X, "Other") >0) Q19_38 = 1.
EXECUTE.


*Variable Q24_1X.
COMPUTE Q24_1 = 0.
IF (CHAR.INDEX(Q24_1X, "Unsure") >0) Q24_1 = 1.
EXECUTE.
 
COMPUTE Q24_2 = 0.
IF (CHAR.INDEX(Q24_1X, "Not relevant") >0) Q24_2 = 1.
EXECUTE.
 
COMPUTE Q24_3 = 0.
IF (CHAR.INDEX(Q24_1X, "Hard-coded in your repository platform/software") >0) Q24_3 = 1.
EXECUTE.

COMPUTE Q24_4 = 0.
IF (CHAR.INDEX(Q24_1X, "integration with an external tool, service or metadata schema") >0) Q24_4 = 1.
EXECUTE.

COMPUTE Q24_5 = 0.
IF (CHAR.INDEX(Q24_1X, "Other") >0) Q24_5 = 1.
EXECUTE.

*Variable Q26_1X.
COMPUTE Q26_1 = 0.
IF (CHAR.INDEX(Q26_1X, "Unsure") >0) Q26_1 = 1.
EXECUTE.
 
COMPUTE Q26_2 = 0.
IF (CHAR.INDEX(Q26_1X, "Not relevant") >0) Q26_2 = 1.
EXECUTE.
 
COMPUTE Q26_3 = 0.
IF (CHAR.INDEX(Q26_1X, "Hard-coded or embedded in your repository platform/software") >0) Q26_3 = 1.
EXECUTE.

COMPUTE Q26_4 = 0.
IF (CHAR.INDEX(Q26_1X, "integration with an external tool, service or semantic artefact") >0) Q26_4 = 1.
EXECUTE.

COMPUTE Q26_5 = 0.
IF (CHAR.INDEX(Q26_1X, "Other") >0) Q26_5 = 1.
EXECUTE.


*Variable Q22_1X.
COMPUTE Q22_1 = 0.
IF (CHAR.INDEX(Q22_1X, "ADSbibcode") > 0) Q22_1 = 1.
EXECUTE.
 
COMPUTE Q22_2 = 0.
IF (CHAR.INDEX(Q22_1X, "ARK") > 0) Q22_2 = 1.
EXECUTE.
 
COMPUTE Q22_3 = 0.
IF (CHAR.INDEX(Q22_1X, "arXiv Identifier") > 0) Q22_3 = 1.
EXECUTE.
 
COMPUTE Q22_4 = 0.
IF (CHAR.INDEX(Q22_1X, "bibcode") > 0) Q22_4 = 1.
EXECUTE.
 
COMPUTE Q22_5 = 0.
IF (CHAR.INDEX(Q22_1X, "ConfIDent") > 0) Q22_5 = 1.
EXECUTE.
 
COMPUTE Q22_6 = 0.
IF (CHAR.INDEX(Q22_1X, "Crossref DOI") > 0) Q22_6 = 1.
EXECUTE.
 
COMPUTE Q22_7 = 0.
IF (CHAR.INDEX(Q22_1X, "CrossRef Funder ID") > 0) Q22_7 = 1.
EXECUTE.
 
COMPUTE Q22_8 = 0.
IF (CHAR.INDEX(Q22_1X, "Crossref Grant ID") > 0) Q22_8 = 1.
EXECUTE.
 
COMPUTE Q22_9 = 0.
IF (CHAR.INDEX(Q22_1X, "CSTR") > 0) Q22_9 = 1.
EXECUTE.
 
COMPUTE Q22_10 = 0.
IF (CHAR.INDEX(Q22_1X, "DAI") > 0) Q22_10 = 1.
EXECUTE.
 
COMPUTE Q22_11 = 0.
IF (CHAR.INDEX(Q22_1X, "DataCite DOI") > 0) Q22_11 = 1.
EXECUTE.
 
COMPUTE Q22_12 = 0.
IF (CHAR.INDEX(Q22_1X, "DEIMS.ID") > 0) Q22_12 = 1.
EXECUTE.
 
COMPUTE Q22_13 = 0.
IF (CHAR.INDEX(Q22_1X, "DOI") > 0) Q22_13 = 1.
EXECUTE.
 
COMPUTE Q22_14 = 0.
IF (CHAR.INDEX(Q22_1X, "EAN-13") > 0) Q22_14 = 1.
EXECUTE.
 
COMPUTE Q22_15 = 0.
IF (CHAR.INDEX(Q22_1X, "EIDR") > 0) Q22_15 = 1.
EXECUTE.
 
COMPUTE Q22_16 = 0.
IF (CHAR.INDEX(Q22_1X, "eISBN") > 0) Q22_16 = 1.
EXECUTE.
 
COMPUTE Q22_17 = 0.
IF (CHAR.INDEX(Q22_1X, "eISSN") > 0) Q22_17 = 1.
EXECUTE.
 
COMPUTE Q22_18 = 0.
IF (CHAR.INDEX(Q22_1X, "ePIC Handle") > 0) Q22_18 = 1.
EXECUTE.
 
COMPUTE Q22_19 = 0.
IF (CHAR.INDEX(Q22_1X, "GND") > 0) Q22_19 = 1.
EXECUTE.
 
COMPUTE Q22_20 = 0.
IF (CHAR.INDEX(Q22_1X, "GRID") > 0) Q22_20 = 1.
EXECUTE.
 
COMPUTE Q22_21 = 0.
IF (CHAR.INDEX(Q22_1X, "Handle") > 0) Q22_21 = 1.
EXECUTE.
 
COMPUTE Q22_22 = 0.
IF (CHAR.INDEX(Q22_1X, "IGSN") > 0) Q22_22 = 1.
EXECUTE.
 
COMPUTE Q22_23 = 0.
IF (CHAR.INDEX(Q22_1X, "ISAN") > 0) Q22_23 = 1.
EXECUTE.
 
COMPUTE Q22_24 = 0.
IF (CHAR.INDEX(Q22_1X, "ISBN") > 0) Q22_24 = 1.
EXECUTE.
 
COMPUTE Q22_25 = 0.
IF (CHAR.INDEX(Q22_1X, "ISCC") > 0) Q22_25 = 1.
EXECUTE.
 
COMPUTE Q22_26 = 0.
IF (CHAR.INDEX(Q22_1X, "ISLI") > 0) Q22_26 = 1.
EXECUTE.
 
COMPUTE Q22_27 = 0.
IF (CHAR.INDEX(Q22_1X, "ISMN") > 0) Q22_27 = 1.
EXECUTE.
 
COMPUTE Q22_28 = 0.
IF (CHAR.INDEX(Q22_1X, "ISNI") > 0) Q22_28 = 1.
EXECUTE.
 
COMPUTE Q22_29 = 0.
IF (CHAR.INDEX(Q22_1X, "ISSN") > 0) Q22_29 = 1.
EXECUTE.
 
COMPUTE Q22_30 = 0.
IF (CHAR.INDEX(Q22_1X, "ISTC") > 0) Q22_30 = 1.
EXECUTE.
 
COMPUTE Q22_31 = 0.
IF (CHAR.INDEX(Q22_1X, "LCNA") > 0) Q22_31 = 1.
EXECUTE.
 
COMPUTE Q22_32 = 0.
IF (CHAR.INDEX(Q22_1X, "LISSN") > 0) Q22_32 = 1.
EXECUTE.
 
COMPUTE Q22_33 = 0.
IF (CHAR.INDEX(Q22_1X, "LSID") > 0) Q22_33 = 1.
EXECUTE.
 
COMPUTE Q22_34 = 0.
IF (CHAR.INDEX(Q22_1X, "NBN") > 0) Q22_34 = 1.
EXECUTE.
 
COMPUTE Q22_35 = 0.
IF (CHAR.INDEX(Q22_1X, "ORCID") > 0) Q22_35 = 1.
EXECUTE.
 
COMPUTE Q22_36 = 0.
IF (CHAR.INDEX(Q22_1X, "PIC") > 0) Q22_36 = 1.
EXECUTE.
 
COMPUTE Q22_37 = 0.
IF (CHAR.INDEX(Q22_1X, "PIDINST") > 0) Q22_37 = 1.
EXECUTE.
 
COMPUTE Q22_38 = 0.
IF (CHAR.INDEX(Q22_1X, "PMID") > 0) Q22_38 = 1.
EXECUTE.
 
COMPUTE Q22_39 = 0.
IF (CHAR.INDEX(Q22_1X, "PURL") > 0) Q22_39 = 1.
EXECUTE.
 
COMPUTE Q22_40 = 0.
IF (CHAR.INDEX(Q22_1X, "QID") > 0) Q22_40 = 1.
EXECUTE.
 
COMPUTE Q22_41 = 0.
IF (CHAR.INDEX(Q22_1X, "RAI ID") > 0) Q22_41 = 1.
EXECUTE.
 
COMPUTE Q22_42 = 0.
IF (CHAR.INDEX(Q22_1X, "RAiD") > 0) Q22_42 = 1.
EXECUTE.
 
COMPUTE Q22_43 = 0.
IF (CHAR.INDEX(Q22_1X, "ResearcherID") > 0) Q22_43 = 1.
EXECUTE.
 
COMPUTE Q22_44 = 0.
IF (CHAR.INDEX(Q22_1X, "Ringgold") > 0) Q22_44 = 1.
EXECUTE.
 
COMPUTE Q22_45 = 0.
IF (CHAR.INDEX(Q22_1X, "ROR") > 0) Q22_45 = 1.
EXECUTE.
 
COMPUTE Q22_46 = 0.
IF (CHAR.INDEX(Q22_1X, "RRID") > 0) Q22_46 = 1.
EXECUTE.
 
COMPUTE Q22_47 = 0.
IF (CHAR.INDEX(Q22_1X, "ScopusAuthorID") > 0) Q22_47 = 1.
EXECUTE.
 
COMPUTE Q22_48 = 0.
IF (CHAR.INDEX(Q22_1X, "SWHID") > 0) Q22_48 = 1.
EXECUTE.
 
COMPUTE Q22_49 = 0.
IF (CHAR.INDEX(Q22_1X, "UPC") > 0) Q22_49 = 1.
EXECUTE.
 
COMPUTE Q22_50 = 0.
IF (CHAR.INDEX(Q22_1X, "URI") > 0) Q22_50 = 1.
EXECUTE.
 
COMPUTE Q22_51 = 0.
IF (CHAR.INDEX(Q22_1X, "URL") > 0) Q22_51 = 1.
EXECUTE.
 
COMPUTE Q22_52 = 0.
IF (CHAR.INDEX(Q22_1X, "URN") > 0) Q22_52 = 1.
EXECUTE.
 
COMPUTE Q22_53 = 0.
IF (CHAR.INDEX(Q22_1X, "VAT-number") > 0) Q22_53 = 1.
EXECUTE.
 
COMPUTE Q22_54 = 0.
IF (CHAR.INDEX(Q22_1X, "VIAF") > 0) Q22_54 = 1.
EXECUTE.
 
COMPUTE Q22_55 = 0.
IF (CHAR.INDEX(Q22_1X, "Wf4Ever Research Object Identifiers") > 0) Q22_55 = 1.
EXECUTE.
 
COMPUTE Q22_56 = 0.
IF (CHAR.INDEX(Q22_1X, "WorkflowHub Identifiers") > 0) Q22_56 = 1.
EXECUTE.
 
COMPUTE Q22_57 = 0.
IF (CHAR.INDEX(Q22_1X, "zbMATH") > 0) Q22_57 = 1.
EXECUTE.
 
COMPUTE Q22_58 = 0.
IF (CHAR.INDEX(Q22_1X, "Other") > 0) Q22_58 = 1.
EXECUTE.


*Variable Q39_1X.
COMPUTE Q39_1 = 0.
IF (CHAR.INDEX(Q39_1X, "Unsure") > 0) Q39_1 = 1.
EXECUTE.
 
COMPUTE Q39_2 = 0.
IF (CHAR.INDEX(Q39_1X, "Structural funding") > 0) Q39_2 = 1.
EXECUTE.
 
COMPUTE Q39_3 = 0.
IF (CHAR.INDEX(Q39_1X, "Support by the host or partner institution(s)") > 0) Q39_3 = 1.
EXECUTE.
 
COMPUTE Q39_4 = 0.
IF (CHAR.INDEX(Q39_1X, "Depending on data deposit fees") > 0) Q39_4 = 1.
EXECUTE.
 
COMPUTE Q39_5 = 0.
IF (CHAR.INDEX(Q39_1X, "Funding from access charges") > 0) Q39_5 = 1.
EXECUTE.
 
COMPUTE Q39_6 = 0.
IF (CHAR.INDEX(Q39_1X, "Support through contract services or project funding") > 0) Q39_6 = 1.
EXECUTE.
 
COMPUTE Q39_7 = 0.
IF (CHAR.INDEX(Q39_1X, "Other") > 0) Q39_7 = 1.
EXECUTE.




VARIABLE LABELS
Q43_1 "Processes and documents that ensure that the repository staff have clear understanding of all storage locations and how they are managed"
Q43_2 "What processes and/or documentation does your repository use to ensure appropriate digital object and metadata storage and integrity? Strategy for multiple copies of digital objects"
Q43_3 "What processes and/or documentation does your repository use to ensure appropriate digital object and metadata storage and integrity? Risk management strategies and mechanisms"
Q43_4 "What processes and/or documentation does your repository use to ensure appropriate digital object and metadata storage and integrity? Procedures for handling and monitoring of storage media"
Q43_5 "What processes and/or documentation does your repository use to ensure appropriate digital object and metadata storage and integrity? Procedures for deletion of digital objects"
Q43_6 "What processes and/or documentation does your repository use to ensure appropriate digital object and metadata storage and integrity? Checks to verify that a digital object has not been altered or corrupted"
Q19_1 "On what platforms/software does your repository operate? Select all applicable. Archivematica"
Q19_2 "On what platforms/software does your repository operate? Select all applicable. arXiv"
Q19_3 "On what platforms/software does your repository operate? Select all applicable. AsPredicted"
Q19_4 "On what platforms/software does your repository operate? Select all applicable. AtoM"
Q19_5 "On what platforms/software does your repository operate? Select all applicable. bioRxiv"
Q19_6 "On what platforms/software does your repository operate? Select all applicable. Bitbucket"
Q19_7 "On what platforms/software does your repository operate? Select all applicable. CKAN"
Q19_8 "On what platforms/software does your repository operate? Select all applicable. ClinicalTrials.gov"
Q19_9 "On what platforms/software does your repository operate? Select all applicable. Dataverse"
Q19_10 "On what platforms/software does your repository operate? Select all applicable. DigitalCommons"
Q19_11 "On what platforms/software does your repository operate? Select all applicable. Djehuty"
Q19_12 "On what platforms/software does your repository operate? Select all applicable. Dryad"
Q19_13 "On what platforms/software does your repository operate? Select all applicable. DSpace"
Q19_14 "On what platforms/software does your repository operate? Select all applicable. EPrints"
Q19_15 "On what platforms/software does your repository operate? Select all applicable. EThOS (Electronic Theses Online Service)"
Q19_16 "On what platforms/software does your repository operate? Select all applicable. FAIRDOMHub"
Q19_17 "On what platforms/software does your repository operate? Select all applicable. Fedora"
Q19_18 "On what platforms/software does your repository operate? Select all applicable. Figshare"
Q19_19 "On what platforms/software does your repository operate? Select all applicable. Galaxy"
Q19_20 "On what platforms/software does your repository operate? Select all applicable. GitHub"
Q19_21 "On what platforms/software does your repository operate? Select all applicable. GitLab"
Q19_22 "On what platforms/software does your repository operate? Select all applicable. Haplo"
Q19_23 "On what platforms/software does your repository operate? Select all applicable. Hydra"
Q19_24 "On what platforms/software does your repository operate? Select all applicable. Invenio"
Q19_25 "On what platforms/software does your repository operate? Select all applicable. Islandora"
Q19_26 "On what platforms/software does your repository operate? Select all applicable. Janeway"
Q19_27 "On what platforms/software does your repository operate? Select all applicable. myExperiment"
Q19_28 "On what platforms/software does your repository operate? Select all applicable. OJS (Open Journal Systems)"
Q19_29 "On what platforms/software does your repository operate? Select all applicable. OMP (Open Monograph Press)"
Q19_30 "On what platforms/software does your repository operate? Select all applicable. Open Science Framework (OSF)"
Q19_31 "On what platforms/software does your repository operate? Select all applicable. Preservica"
Q19_32 "On what platforms/software does your repository operate? Select all applicable. ProQuest Dissertations & Theses Global"
Q19_33 "On what platforms/software does your repository operate? Select all applicable. PROSPERO"
Q19_34 "On what platforms/software does your repository operate? Select all applicable. Protocols.io"
Q19_35 "On what platforms/software does your repository operate? Select all applicable. Rosetta"
Q19_36 "On what platforms/software does your repository operate? Select all applicable. WorkflowHub"
Q19_37 "On what platforms/software does your repository operate? Select all applicable. Zenodo"
Q19_38 "On what platforms/software does your repository operate? Select all applicable. Other"
Q24_1 "How are metadata schemas implemented in your repository? Unsure"
Q24_2 "How are metadata schemas implemented in your repository? Not relevant"
Q24_3 "How are metadata schemas implemented in your repository? Hard-coded in your repository platform/software"
Q24_4 "How are metadata schemas implemented in your repository? Through integration with an external tool, service or metadata schema catalogue/registry via API or similar mechanism"
Q24_5 "How are metadata schemas implemented in your repository? Other"
Q26_1 "How are semantic artefacts implemented in your repository? Unsure"
Q26_2 "How are semantic artefacts implemented in your repository? Not relevant"
Q26_3 "How are semantic artefacts implemented in your repository? Hard-coded or embedded in your repository platform/software"
Q26_4 "How are semantic artefacts implemented in your repository? Through integration with an external tool, service or semantic artefact catalogue via API or similar mechanism"
Q26_5 "How are semantic artefacts implemented in your repository? Other"
Q22_1 "Which Persistent Identifiers (PIDs) has your repository implemented or is implementing? Select all applicable. ADSbibcode"
Q22_2 "Which Persistent Identifiers (PIDs) has your repository implemented or is implementing? Select all applicable. ARK"
Q22_3 "Which Persistent Identifiers (PIDs) has your repository implemented or is implementing? Select all applicable. arXiv Identifier"
Q22_4 "Which Persistent Identifiers (PIDs) has your repository implemented or is implementing? Select all applicable. bibcode"
Q22_5 "Which Persistent Identifiers (PIDs) has your repository implemented or is implementing? Select all applicable. ConfIDent"
Q22_6 "Which Persistent Identifiers (PIDs) has your repository implemented or is implementing? Select all applicable. Crossref DOI"
Q22_7 "Which Persistent Identifiers (PIDs) has your repository implemented or is implementing? Select all applicable. CrossRef Funder ID"
Q22_8 "Which Persistent Identifiers (PIDs) has your repository implemented or is implementing? Select all applicable. Crossref Grant ID"
Q22_9 "Which Persistent Identifiers (PIDs) has your repository implemented or is implementing? Select all applicable. CSTR"
Q22_10 "Which Persistent Identifiers (PIDs) has your repository implemented or is implementing? Select all applicable. DAI"
Q22_11 "Which Persistent Identifiers (PIDs) has your repository implemented or is implementing? Select all applicable. DataCite DOI"
Q22_12 "Which Persistent Identifiers (PIDs) has your repository implemented or is implementing? Select all applicable. DEIMS.ID"
Q22_13 "Which Persistent Identifiers (PIDs) has your repository implemented or is implementing? Select all applicable. DOI"
Q22_14 "Which Persistent Identifiers (PIDs) has your repository implemented or is implementing? Select all applicable. EAN-13"
Q22_15 "Which Persistent Identifiers (PIDs) has your repository implemented or is implementing? Select all applicable. EIDR"
Q22_16 "Which Persistent Identifiers (PIDs) has your repository implemented or is implementing? Select all applicable. eISBN"
Q22_17 "Which Persistent Identifiers (PIDs) has your repository implemented or is implementing? Select all applicable. eISSN"
Q22_18 "Which Persistent Identifiers (PIDs) has your repository implemented or is implementing? Select all applicable. ePIC Handle"
Q22_19 "Which Persistent Identifiers (PIDs) has your repository implemented or is implementing? Select all applicable. GND"
Q22_20 "Which Persistent Identifiers (PIDs) has your repository implemented or is implementing? Select all applicable. GRID"
Q22_21 "Which Persistent Identifiers (PIDs) has your repository implemented or is implementing? Select all applicable. Handle"
Q22_22 "Which Persistent Identifiers (PIDs) has your repository implemented or is implementing? Select all applicable. IGSN"
Q22_23 "Which Persistent Identifiers (PIDs) has your repository implemented or is implementing? Select all applicable. ISAN"
Q22_24 "Which Persistent Identifiers (PIDs) has your repository implemented or is implementing? Select all applicable. ISBN"
Q22_25 "Which Persistent Identifiers (PIDs) has your repository implemented or is implementing? Select all applicable. ISCC"
Q22_26 "Which Persistent Identifiers (PIDs) has your repository implemented or is implementing? Select all applicable. ISLI"
Q22_27 "Which Persistent Identifiers (PIDs) has your repository implemented or is implementing? Select all applicable. ISMN"
Q22_28 "Which Persistent Identifiers (PIDs) has your repository implemented or is implementing? Select all applicable. ISNI"
Q22_29 "Which Persistent Identifiers (PIDs) has your repository implemented or is implementing? Select all applicable. ISSN"
Q22_30 "Which Persistent Identifiers (PIDs) has your repository implemented or is implementing? Select all applicable. ISTC"
Q22_31 "Which Persistent Identifiers (PIDs) has your repository implemented or is implementing? Select all applicable. LCNA"
Q22_32 "Which Persistent Identifiers (PIDs) has your repository implemented or is implementing? Select all applicable. LISSN"
Q22_33 "Which Persistent Identifiers (PIDs) has your repository implemented or is implementing? Select all applicable. LSID"
Q22_34 "Which Persistent Identifiers (PIDs) has your repository implemented or is implementing? Select all applicable. NBN"
Q22_35 "Which Persistent Identifiers (PIDs) has your repository implemented or is implementing? Select all applicable. ORCID"
Q22_36 "Which Persistent Identifiers (PIDs) has your repository implemented or is implementing? Select all applicable. PIC"
Q22_37 "Which Persistent Identifiers (PIDs) has your repository implemented or is implementing? Select all applicable. PIDINST"
Q22_38 "Which Persistent Identifiers (PIDs) has your repository implemented or is implementing? Select all applicable. PMID"
Q22_39 "Which Persistent Identifiers (PIDs) has your repository implemented or is implementing? Select all applicable. PURL"
Q22_40 "Which Persistent Identifiers (PIDs) has your repository implemented or is implementing? Select all applicable. QID"
Q22_41 "Which Persistent Identifiers (PIDs) has your repository implemented or is implementing? Select all applicable. RAI ID"
Q22_42 "Which Persistent Identifiers (PIDs) has your repository implemented or is implementing? Select all applicable. RAiD"
Q22_43 "Which Persistent Identifiers (PIDs) has your repository implemented or is implementing? Select all applicable. ResearcherID"
Q22_44 "Which Persistent Identifiers (PIDs) has your repository implemented or is implementing? Select all applicable. Ringgold"
Q22_45 "Which Persistent Identifiers (PIDs) has your repository implemented or is implementing? Select all applicable. ROR"
Q22_46 "Which Persistent Identifiers (PIDs) has your repository implemented or is implementing? Select all applicable. RRID"
Q22_47 "Which Persistent Identifiers (PIDs) has your repository implemented or is implementing? Select all applicable. ScopusAuthorID"
Q22_48 "Which Persistent Identifiers (PIDs) has your repository implemented or is implementing? Select all applicable. SWHID"
Q22_49 "Which Persistent Identifiers (PIDs) has your repository implemented or is implementing? Select all applicable. UPC"
Q22_50 "Which Persistent Identifiers (PIDs) has your repository implemented or is implementing? Select all applicable. URI"
Q22_51 "Which Persistent Identifiers (PIDs) has your repository implemented or is implementing? Select all applicable. URL"
Q22_52 "Which Persistent Identifiers (PIDs) has your repository implemented or is implementing? Select all applicable. URN"
Q22_53 "Which Persistent Identifiers (PIDs) has your repository implemented or is implementing? Select all applicable. VAT-number"
Q22_54 "Which Persistent Identifiers (PIDs) has your repository implemented or is implementing? Select all applicable. VIAF"
Q22_55 "Which Persistent Identifiers (PIDs) has your repository implemented or is implementing? Select all applicable. Wf4Ever Research Object Identifiers"
Q22_56 "Which Persistent Identifiers (PIDs) has your repository implemented or is implementing? Select all applicable. WorkflowHub Identifiers"
Q22_57 "Which Persistent Identifiers (PIDs) has your repository implemented or is implementing? Select all applicable. zbMATH"
Q22_58 "Which Persistent Identifiers (PIDs) has your repository implemented or is implementing? Select all applicable. Other (please specify in question below)"
Q39_1 "What are the main funding sources of your repository? Select all applicable. Unsure"
Q39_2 "What are the main funding sources of your repository? Select all applicable. Structural funding, i.e. central funding or contract from (a) research or infrastructure funder(s) that is in the form of (a) longer-term, multi-year contract(s)"
Q39_3 "What are the main funding sources of your repository? Select all applicable. Support by the host or partner institution(s), i.e. direct or indirect support from the host or partner institution(s)"
Q39_4 "What are the main funding sources of your repository? Select all applicable. Depending on data deposit fees, i.e. in the form of annual contracts with depositing institutions or per-deposit fees"
Q39_5 "What are the main funding sources of your repository? Select all applicable. Funding from access charges, i.e. charging for access to standard data or to value-added services and facilities"
Q39_6 "What are the main funding sources of your repository? Select all applicable. Support through contract services or project funding, i.e. charges for contract services to other parties or for research contracts…"
Q39_7 "What are the main funding sources of your repository? Select all applicable. Other (please specify in question below)"
.

VALUE LABELS
/Q43_1 TO Q43_6 Q19_1 TO Q19_38 Q24_1 TO Q24_5 Q26_1 Q26_2 Q26_3 Q26_4 Q26_5
Q22_1 TO Q22_58 Q39_1 TO Q39_7
0 "Not selected"
1 "Selected".
 
*Remove unnecessary decimals from values.
FORMATS Q43_1 TO Q43_6 Q19_1 TO Q19_38 Q24_1 TO Q24_5 Q26_1 Q26_2 Q26_3 Q26_4
 Q26_5 Q22_1 TO Q22_58 Q39_1 TO Q39_7 (F2.0).
EXECUTE.






*Recode the values in the correct order according to the questionnaire.
 *Q16 (Digital object management), Q29 (Organizational infrastructure), Q40 (Technology and security).
RECODE Q16_1 TO Q16_8 Q29_1 TO Q29_16 Q40_1 TO Q40_5 (1=5) (4=1) (5=4).
EXECUTE.


*Based on the open-text explanation provided in string variable Q38_2X 'Other, namely', one 'Other' response was recoded as value 4 'More than 10 years' in variable Q38_1.
IF (char.index (Q38_2X, "Could also have said More than 10 years")NE 0) Q38_1 = 4.
EXECUTE.

*Based on the open-text explanation provided in string variable Q39_otherX 'Other, namely', two 'Other' responses were recoded
 as value 0 'not selected' in variable Q39_7 'Other', and same responses were recoded as value 1 'selected' in variable 39_8 'Support through contract services or project funding'.
IF (char.index (Q39_otherX, "From other projects, and our own time")NE 0) Q39_7 = 0.
EXECUTE.
IF (char.index (Q39_otherX, "From other projects, and our own time")NE 0) Q39_6 = 1.
EXECUTE.
IF (char.index (Q39_otherX, "Project funding (occasional 1-2 year projects aimed at infrastructure)")NE 0) Q39_7 = 0.
EXECUTE.
IF (char.index (Q39_otherX, "Project funding (occasional 1-2 year projects aimed at infrastructure)")NE 0) Q39_6 = 1.
EXECUTE.




*5. Add value labels. Q20_1 values 2 and 5 had to be shortened, due to a spss error.
VALUE LABELS
Q16_1 TO Q16_8 Q29_1 TO Q29_16 Q40_1 Q40_2 TO Q40_5 
1 "No challenges"
2 "Minor challenges"
3 "Moderate challenges"
4 "Significant challenges"
5 "Critical challenges"
/Q18 
1 "No thank you, I would like to continue to the next section"
2 "Yes, I would like to answer some more questions on digital object management"
/Q20_1 
1 "Cloud deployment, hosted and managed by a third-party provider"
2 "Cloud deployment, hosted and managed within the infrastructure of your repository/host institution/partner institution"
3 "Hybrid deployment, a combination of on-premises and cloud-based solutions"
4 "Not relevant"
5 "On-premises deployment on traditional servers, managed within the infrastructure of your repository/host institution"
6 "Other"
7 "Software as a Service (SaaS) solution, hosted and managed by a third-party provider"
8 "Unsure"
/Q21 Q25 Q36 
1 "Implemented"
2 "In implementation"
3 "No"
4 "Planned"
5 "Unsure"
/Q31 
1 "No thank you, I would like to continue to the next section"
2 "Yes, I would like to answer some more questions on organisational infrastructure"
/Q38_1 
1 "1 year at a time"
2 "2-5 years"
3 "6-10 years"
4 "More than 10 years"
5 "Other"
6 "Unsure"
/Q42 
1 "No thank you, I would like to continue to the next section"
2 "Yes, I would like to answer some more questions on technology and security"
.



*Add variable labels.
VARIABLE LABELS
Q16_1 "To what extent does your repository face challenges and needs in terms of digital object management activities and functions? Deposit & Appraisal"
Q16_2 "To what extent does your repository face challenges and needs in terms of digital object management activities and functions? Curation, Quality & Compliance"
Q16_3 "To what extent does your repository face challenges and needs in terms of digital object management activities and functions? Discovery & Identification"
Q16_7 "To what extent does your repository face challenges and needs in terms of digital object management activities and functions? Provenance & Authenticity"
Q29_1 "To what extent does your repository face challenges and needs in terms of organisational infrastructure activities and functions? Mission & Scope"
Q29_5 "To what extent does your repository face challenges and needs in terms of organisational infrastructure activities and functions? People & Expertise"
Q29_8 "To what extent does your repository face challenges and needs in terms of organisational infrastructure activities and functions? Release & Publishing"
Q29_9 "To what extent does your repository face challenges and needs in terms of organisational infrastructure activities and functions? Legal & Ethical"
Q29_10 "To what extent does your repository face challenges and needs in terms of organisational infrastructure activities and functions? Policy & Standards Management"
Q29_12 "To what extent does your repository face challenges and needs in terms of organisational infrastructure activities and functions? Analysis & Impact"
Q29_15 "To what extent does your repository face challenges and needs in terms of organisational infrastructure activities and functions? Research & Development"
Q40_1 "To what extent does your repository face challenges and needs in terms of technology and security activities and functions? Storage & Integrity"
.



*Drop irrelevant variables from the data and old string variables that were recoded as new numeric variables. Organize data.
SAVE OUTFILE='[File location]\Landscape_survey_data.sav' /KEEP Q16_1 TO Q16_8
   Q18 Q19_1 TO Q19_38 Q19_otherX Q20_1 Q20_2X Q21 Q22_1 TO Q22_58 Q22_otherX
  Q24_1 TO Q24_5 Q24_otherX Q25 Q26_1 Q26_2 Q26_3 Q26_4 Q26_5 Q26_otherX
  Q29_1 TO Q29_16 Q31 Q36 Q37X Q38_1 Q38_2X Q39_1 TO Q39_7 Q39_otherX Q40_1 TO Q40_5 Q42
  Q43_1 TO Q43_6 Q43_2X.
GET FILE='[File location]\Landscape_survey_data.sav'.








*6. Combine open-ended matrix variables together (e.g. metadata schema variables together and purpose of use together). First, the lengths of the variables are equalised.
*ALTER TYPE Q23_1AX Q23_2AX Q23_3AX Q23_4AX Q23_5AX Q23_1BX Q23_2BX Q23_3BX Q23_4BX Q23_5BX
  Q27_1AX Q27_2AX Q27_3AX Q27_4AX Q27_5AX Q27_1BX Q27_2BX Q27_3BX Q27_4BX Q27_5BX
  Q28_1AX Q28_2AX Q28_3AX Q28_4AX Q28_5AX Q28_1BX Q28_2BX Q28_3BX Q28_4BX Q28_5BX
 Q44_1AX Q44_2AX Q44_3AX Q44_4AX Q44_5AX Q44_1BX Q44_2BX Q44_3BX Q44_4BX Q44_5BX (A300).
*EXECUTE.
 
*Generate a response ID for variable conversion, so that respondents can be matched to answers.
*COMPUTE ID = $CASENUM.
*FORMATS ID (F3.0).

*Name original dataset, and activate new dataset. The command used to combine these variables required a new dataset in which the variables were created,
because the number of observation rows changes when there will be 5 observation rows per respondent.
*DATASET NAME original.
*DATASET COPY analysisdata1.
*DATASET ACTIVATE analysisdata1.

*Combine metadata schema variables together and purpose of use together. The 'keep' command can be used to add e.g. background variables to a new dataset for analysis.
*Create variables in a new dataset. The command combined the answers of the variables into one variable + all identical answers together.
*VARSTOCASES /MAKE MetadataSchema FROM Q23_1AX Q23_2AX Q23_3AX Q23_4AX Q23_5AX  /MAKE PurposeOfUse1 FROM Q23_1BX Q23_2BX Q23_3BX Q23_4BX
  Q23_5BX /INDEX=Variable /KEEP=ID /NULL=KEEP.
*EXECUTE.
*DATASET ACTIVATE analysisdata1.
*The analysisdata1 dataset is activated: Add variable labels.
*VARIABLE LABELS
Variable "Question group"
MetadataSchema "What are the main metadata schemas your repository uses? Please add up to 5 main metadata schemas, and for each schema indicate for what purpose(s) it is used. Metadata schemas"
PurposeOfUse1 "What are the main metadata schemas your repository uses? Please add up to 5 main metadata schemas, and for each schema indicate for what purpose(s) it is used. Purpose(s) of use".


*Save analysisdata -dataset.
*SAVE OUTFILE='[File location]\analysisdata1.sav'.



*Combine other similar open-ended matrix variables together to a new dataset.
*DATASET CLOSE analysisdata1.
*DATASET ACTIVATE original.
*DATASET COPY analysisdata2.
*DATASET ACTIVATE analysisdata2.

*VARSTOCASES /MAKE Catalogues_registries FROM Q27_1AX Q27_2AX Q27_3AX Q27_4AX Q27_5AX /MAKE PurposeOfUse2 FROM Q27_1BX Q27_2BX Q27_3BX Q27_4BX
  Q27_5BX /INDEX=Variable /KEEP=ID /NULL=KEEP.
*EXECUTE.
*DATASET ACTIVATE analysisdata2.
*Add variable labels.
*VARIABLE LABELS
Variable "Question group"
Catalogues_registries "What are the main catalogues or registries your repository uses for digital object management? Add up to 5 main catalogues or registries, and for each indicate for which purposes it is used. Catalogue or Registry"
PurposeOfUse2 "What are the main catalogues or registries your repository uses for digital object management? Add up to 5 main catalogues or registries, and for each catalogue or registry indicate for which purposes it is used. Purpose(s) of use".


*Save analysisdata -dataset.
*SAVE OUTFILE='[File location]\analysisdata2.sav'.



*Combine other similar open-ended matrix variables together to a new dataset.
*DATASET CLOSE analysisdata2.
*DATASET ACTIVATE original.
*DATASET COPY analysisdata3.
*DATASET ACTIVATE analysisdata3.

*VARSTOCASES /MAKE Resources_services FROM Q28_1AX Q28_2AX Q28_3AX Q28_4AX Q28_5AX /MAKE PurposeOfUse3 FROM Q28_1BX Q28_2BX Q28_3BX Q28_4BX
  Q28_5BX /INDEX=Variable /KEEP=ID /NULL=KEEP.
*EXECUTE.
*DATASET ACTIVATE analysisdata3.
*Add variable labels.
*VARIABLE LABELS
Variable "Question group"
Resources_services "What are the main shared resources, services or federated systems your repository uses for managing digital objects? Add up to 5 main resources, and indicate for what purpose it is used. Shared resource/service or federated system"
PurposeOfUse3 "What are the main shared resources or services or federated systems your repository uses for managing digital objects? Add up to 5 main resources, and indicate for each of them for which purposes it is used. Purpose(s) of use".

*Save analysisdata -dataset.
*SAVE OUTFILE='[File location]\analysisdata3.sav'.



*Combine other similar open-ended matrix variables together to a new dataset.
*DATASET CLOSE analysisdata3.
*DATASET ACTIVATE original.
*DATASET COPY analysisdata4.
*DATASET ACTIVATE analysisdata4.

*VARSTOCASES /MAKE Standards_BestPractices FROM Q44_1AX Q44_2AX Q44_3AX Q44_4AX Q44_5AX /MAKE PurposeOfUse4 FROM Q44_1BX Q44_2BX Q44_3BX Q44_4BX
  Q44_5BX /INDEX=Variable /KEEP=ID /NULL=KEEP.
*EXECUTE.
*DATASET ACTIVATE analysisdata4.
*Add variable labels.
*VARIABLE LABELS
Variable "Question group"
Standards_BestPractices "What (other) main standards, best practices and solutions does your repository use for its technology and security management? Add up to 5 main standards, and indicate for what purpose it is used. Standard or best practice"
PurposeOfUse4 "What (other) main standards, best practices and solutions does your repository use for its technology and security management? Add up to 5 main standards etc. and indicate for what purpose it is used. Purpose(s) of use".

*Save analysisdata -dataset.
*SAVE OUTFILE='[File location]\analysisdata4.sav'.


*Close unnecessary datasets/return to the original dataset etc.
*DATASET CLOSE analysisdata4.
*DATASET ACTIVATE original.


*DATASET ACTIVATE DataSet1.
