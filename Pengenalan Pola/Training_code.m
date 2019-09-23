pkg load image;
files = glob("Training/*.jpg");
db = cell(length(files),4);
for i=1:length(files)
  a = imread(files{i});
  imgArr{i} = imresize(a,[88,88]);
  [imH,mapH]=rgb2ind(imgArr{i}(:,:,1:3));
  red=mean(mapH(:,1));
  green=mean(mapH(:,2));
  blue=mean(mapH(:,3));
  db{i,1} = red;
  db{i,2} = green;
  db{i,3} = blue;
  
  if(i>= 1 && i<=6)
      db1(i,4) = "Tomat Hijau";
    else
      db1(i,4) = "Tomat Merah";
    endif
  
endfor

save dbTraining db;

disp(db)


clear('i');
clear('red');
clear('green');
clear('blue');
clear('a');
clear('db');
clear('files');
clear('imH');
clear('imgArr');
clear('mapH');