# FLUSPECT_RETRIEVE

Based on FLUSPECT model. You can use the input files (reflectance, transmittance) to simulate bio-parameters (Cab, Cw, Cdm ...). And then generate the backward and forward excited fluorescence matrices.

Please place the input files at "FLUSPECT_RETRIEVE\data\measured". The input configure file is at "FLUSPECT_RETRIEVE\data\measured\input_data.xlsx". The results are at "FLUSPECT_RETRIEVE\data\output". 

In order to run the model, please set the file path to "FLUSPECT_RETRIEVE\code" and run "main.m" in matlab.


Reference:

* Tol, C., Verhoef, W., Timmermans, J., Verhoef, A. and Su, Z., 2009. An integrated model of soil-canopy spectral radiances, photosynthesis, fluorescence, temperature and energy balance. Biogeosciences, 6(12), pp.3109-3129.

* Vilfan, N., van der Tol, C., Muller, O., Rascher, U. and Verhoef, W., 2016. Fluspect-B: A model for leaf fluorescence, reflectance and transmittance spectra. Remote sensing of environment, 186, pp.596-615.