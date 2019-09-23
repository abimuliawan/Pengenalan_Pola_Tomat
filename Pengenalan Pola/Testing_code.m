pkg load image;
load dbTraining;
files = glob('Testing/*');
for i = 1:length(files)
  test = imread(files{i});
  test_resize = imresize(test,[80,80]);
  testResult = testingFunc(db, test_resize);
  disp("Hasil dari perhitungan 1NN adalah : ")
  disp(testResult{1,2})
  files{i}
endfor
