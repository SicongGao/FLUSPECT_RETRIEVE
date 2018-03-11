% retrieve leaf parameters
Output_dir = '../data/output/';
outfile = [Output_dir, 'output_data.xlsx'];
if exist(outfile, 'file')==2
  delete(outfile);
end

temp = master;

leafbio.Cab = xlsread(outfile,'output','B2');
leafbio.Cw = xlsread(outfile,'output','B3');
leafbio.Cdm = xlsread(outfile,'output','B4');
leafbio.Cs = xlsread(outfile,'output','B5');
leafbio.Cca = xlsread(outfile, 'output','B6');
leafbio.N = xlsread(outfile, 'output','B7');
leafbio.rmse = xlsread(outfile, 'output','B8');

% generate EF-matrixes

% leafbio.Cab = 40;
% leafbio.Cca = 10;
% leafbio.Cdm = 0.01;
% leafbio.Cw = 0.01;
% leafbio.N = 1.5;
leafbio.Cs = 0.1;
leafbio.fqe(1) = 0.02;
leafbio.fqe(2) = 0.1;
leafbio.Cant = 0.1;
leafbio.V2Z = -999;

load ../data/input/fluspect_parameters/Optipar2017_ProspectD.mat
spectral = define_bands;

leafopt = fluspect_B_CX(spectral,leafbio,optipar);

%write Matrix to file
dlmwrite('../data/output/MbI.csv', leafopt.MbI);
dlmwrite('../data/output/MbII.csv', leafopt.MbII);
dlmwrite('../data/output/MfI.csv', leafopt.MfI);
dlmwrite('../data/output/MfII.csv', leafopt.MfII);