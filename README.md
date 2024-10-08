# VPC: Variance Partitioning in Generalized Linear Mixed Models

## Author and Contributors

### Author
- **Julius Olaifa** - [julius.olaifa@okstate.edu](mailto:julius.olaifa@okstate.edu)

### Contributor
- **Pratyaydipta Rudra** - Advisor and contributor

## Package Overview

This R package is designed to estimate and make inference on the Variance Partition Coefficient (VPC) from Generalized Linear Mixed Models (GLMMs). The package handles multiple GLMM families (e.g., Negative Binomial, Tweedie, Gaussian, comPoisson) and provides utilities for data generation, model fitting, and parallel computation.

## File Structure

The package is organized into the following key files and functions:

```plaintext
R/
├── design_matrices.R        # Functions related to design matrices (random and fixed effects)
    ├── generateRandomInterceptMatrix    # Generates design matrix for random intercepts
    ├── generateRandomDesignMatrices     # Generates random design matrices based on inputs
├── fixed_random_effects.R   # Functions for handling random effects in GLMMs
    ├── generateRandomEffectsCoefficients
    ├── computeFixedEffects               # Computes fixed effects for the model
    ├── computeRandomEffects              # Computes random effects for the model
    └── generateAndComputeRandomEffects
├── link_functions.R         # Functions for GLMM link functions (identity, logit, etc.)
    └── computeMuFromEta                  # Computes expected mean from linear predictor
├── glm_glmm_utils.R         # General utilities for GLMM/GLM fitting and computation
    ├── computeMuGLMM                      # Computes the expected mean for GLMM models
    └── compute_mu_sig                     # Computes both mean and variance for the linear predictor
├── data_generation.R        # Functions for generating data based on GLMM families
    ├── generateDataByFamily               # Generates data according to a specified GLMM family
    ├── singleGLMMData                     # Generates a single data set for GLMM
    └── batchGLMMData                      # Generates multiple GLMM data sets
    └── validate_family_params
├── parallel_glmm.R          # Parallelization-related functions for large-scale GLMMs
    └──  batchGLMMDataUsingMatrix              # Runs batch GLMM data generation in parallel
├── vpc_calculation.R        # Functions related to VPC (Variance Partition Coefficient) estimation
    ├── calculate_vpc_for_family           # Main function for VPC calculation for various GLMM families
    └── vpc                               # Wrapper function to calculate VPC from fitted models
├── glmm_fitting.R           # Functions for fitting GLMM models (e.g., singleGLMMFit)
    ├── extractParametersByFamily          # Extracts family-specific parameters from a fitted GLMM
    ├── singleGLMMFit                      # Fits a GLMM model and extracts key model parameters
          ├── model.frame.glmmfit (generic)
          ├── nobs.glmmfit
          ├── vcov.glmmfit
          └── logLik.glmmfit
    └── batchGLMMFit
├── utils.R                  # General utility functions (e.g., log moments, checks)
    ├── groups                            # Groups structure helper
    ├── rgen01                            # Random number generator for generating 0-1 values
    ├── vec2mat                           # Converts vector into a matrix
    ├── mat2vec                           # Converts matrix into a vector
    └── logNormMoment                     # Computes moments for log-normal distribution
├── family_utils.R           # Functions related to handling GLMM family parameters (e.g., glmmTMBfamily)
    └── get_glmmTMBfamily                 # Converts a family string into a corresponding GLMM family object
├── vpc_inference_utils.R
├── vpc_ci.R
└── vpc_test.R
```
