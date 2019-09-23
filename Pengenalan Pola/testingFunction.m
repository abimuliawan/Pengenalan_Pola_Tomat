function jawab = testingFunc(db, img)
  [imH,mapH]=rgb2ind(img(:,:,1:3));
  red=mean(mapH(:,1));
  green=mean(mapH(:,2));
  blue=mean(mapH(:,3));
  jawab = cell(length(db),2);
  for i = 1:length(db)
    jawab{i,1} = abs(db{i,1} - red) + abs(db{i,2} - green) + abs(db{i,3} - blue);
    jawab{i,2} = db{i,4};
  endfor
  for j = 1:90
    for i = 1:length(db)
      if i > 1 && jawab{i,1} < jawab{i-1,1}
        tmp1 = jawab{i-1,1};
        tmp2 = jawab{i-1,2};
        jawab{i-1,1} = jawab{i,1};
        jawab{i-1,2} = jawab{i,2};
        jawab{i,1} = tmp1;
        jawab{i,2} = tmp2;
      endif
    endfor
  endfor
endfunction