# Survival Boosting Model for Hep-C

## Overview


## Input and Output

### KO input
The input to the KO is specified in the KO's service specification file `service.yaml`.

The following shows an example input:
```
{
  "GENDERM": true,
  "RACEHISPANIC": false,
  "RACEMISSING": false,
  "RACEOTHER": false,
  "RACEWHITE": false,
  "AGE": 52,
  "ALB_MAX": 4.2,
  "ALB_MIN": 3.7,
  "ALB_DIFFMAX": 0.07247,
  "ALB_DIFFMIN": -0.0801,
  "ALB_TVAR": 0.07657,
  "ALB_LAST": 4,
  "ALKRATIO_MAX": 0.7477,
  "ALKRATIO_MIN": 0.5604,
  "ALKRATIO_DIFFMAX": 0.0252,
  "ALKRATIO_DIFFMIN": -0.0297,
  "ALKRATIO_TVAR": 0.02729,
  "ALKRATIO_LAST": 0.6429,
  "ALTRATIO_MAX": 1.2444,
  "ALTRATIO_MIN": 0.6508,
  "ALTRATIO_DIFFMAX": 0.0765,
  "ALTRATIO_DIFFMIN": -0.0947,
  "ALTRATIO_TVAR": 0.08713,
  "ALTRATIO_LAST": 0.8571,
  "ASTRATIO_MAX": 1.3409,
  "ASTRATIO_MIN": 0.75,
  "ASTRATIO_DIFFMAX": 0.079,
  "ASTRATIO_DIFFMIN": -0.0949,
  "ASTRATIO_TVAR": 0.08856,
  "ASTRATIO_LAST": 0.9512,
  "BIL_MAX": 0.8,
  "BIL_MIN": 0.4,
  "BIL_DIFFMAX": 0.05743,
  "BIL_DIFFMIN": -0.0636,
  "BIL_TVAR": 0.5938,
  "BIL_LAST": 0.6,
  "BUN_MAX": 17,
  "BUN_MIN": 10,
  "BUN_DIFFMAX": 1.4194,
  "BUN_DIFFMIN": -1.368,
  "BUN_TVAR": 1.3135,
  "BUN_LAST": 13,
  "CI_MAX": 106,
  "CI_MIN": 101,
  "CI_DIFFMAX": 1.0871,
  "CI_DIFFMIN": -1.0231,
  "CI_TVAR": 0.9979,
  "CI_LAST": 103,
  "CRE_MAX": 1.1,
  "CRE_MIN": 0.9,
  "CRE_DIFFMAX": 0.04443,
  "CRE_DIFFMIN": -0.04348,
  "CRE_TVAR": 0.0398,
  "CRE_LAST": 1,
  "GLU_MAX": 12,
  "GLU_MIN": 8.7,
  "GLU_DIFFMAX": 0.8696,
  "GLU_DIFFMIN": -0.949,
  "GLU_TVAR": 0.8717,
  "GLU_LAST": 10.1,
  "HEM_MAX": 15.6,
  "HEM_MIN": 14,
  "HEM_DIFFMAX": 0.2306,
  "HEM_DIFFMIN": -0.291,
  "HEM_TVAR": 0.2682,
  "HEM_LAST": 14.8,
  "PLT_MAX": 25.7,
  "PLT_MIN": 19.5,
  "PLT_DIFFMAX": 0.9277,
  "PLT_DIFFMIN": -1.01,
  "PLT_TVAR": 1.01,
  "PLT_LAST": 22.2,
  "K_MAX": 4.6,
  "K_MIN": 3.9,
  "K_DIFFMAX": 0.1505,
  "K_DIFFMIN": -0.1513,
  "K_TVAR": 0.143,
  "K_LAST": 4.2,
  "NA_MAX": 141,
  "NA_MIN": 137,
  "NA_DIFFMAX": 0.9318,
  "NA_DIFFMIN": -0.9587,
  "NA_TVAR": 0.8822,
  "NA_LAST": 139,
  "TOTP_MAX": 7.9,
  "TOTP_MIN": 7.1,
  "TOTP_DIFFMAX": 0.1098,
  "TOTP_DIFFMIN": -0.1295,
  "TOTP_TVAR": 0.1243,
  "TOTP_LAST": 7.5,
  "WBC_MAX": 8.4,
  "WBC_MIN": 5.8,
  "WBC_DIFFMAX": 0.4184,
  "WBC_DIFFMIN": -0.4348,
  "WBC_TVAR": 0.4439,
  "WBC_LAST": 6.8,
  "APRI_MAX": 0.6334,
  "APRI_MIN": 0.3301,
  "APRI_DIFFMAX": 0.04769,
  "APRI_DIFFMIN": -0.0533,
  "APRI_TVAR": 0.059,
  "APRI_LAST": 0.4405,
  "ASTALT_MAX": 1.0455,
  "ASTALT_MIN": 0.7308,
  "ASTALT_DIFFMAX": 0.04751,
  "ASTALT_DIFFMIN": -0.0473,
  "ASTALT_TVAR": 0.0477,
  "ASTALT_LAST": 0.88235,
  "BMI_MAX": 27.87,
  "BMI_MIN": 25.36,
  "BMI_DIFFMAX": 0.8355,
  "BMI_DIFFMIN": -0.743,
  "BMI_TVAR": 0.6057,
  "BMI_LAST": 26.67,
  "TimeToOutcome": 365,
  "Outcome": 0.5
}
```

### KO output
The KO output as the result from the model is the log of the hazard ratio:
```
{"result": -5.95 }
```

### Activate the KO and try out its service

Please refer to the documentation of [Rplumber-Server](./)


## TO DO list

The current work creates a prototype Knowledge Object based on the Survival Boosting Model for Hep-C prediction.

More work will be needed for bringing the KO closer to the real-world practice, including but definitely not limited by the following:
- Understand the raw data and the workflow to request and aggregate the data;
- Understand the data format and context so that proper summary statistics can be computed for each variable;
- Implement the procedural code to process the raw data and generate the input in the specified format;
- Implement the presentation/transformation/interpretation of the model output
- Enhance the documentation of the KO(s) and the deployment instruction of the KO(s)
