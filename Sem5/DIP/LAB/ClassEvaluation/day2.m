yemum = imread("/home/jacob/Documents/College/Sem5/DIP/LAB/lena.jpeg");

yemum_256 = yemum(1:2:yemum = imread("/home/jacob/Documents/College/Sem5/DIP/LAB/lena.jpeg");

A = [];

for i = 1:size(yemum, 1)
    for j = 1:size(yemum, 2)
            A(i, j*2, 1) = yemum(i, j, 1);
            A(i, j*2, 2) = yemum(i, j, 2);
            A(i, j*2, 3) = yemum(i, j, 3);
            A(i, j*2-1, 1) = yemum(i, j, 1);
            A(i, j*2-1, 2) = yemum(i, j, 2);
            A(i, j*2-1, 3) = yemum(i, j, 3);
    end
end

resized = uint8(A);
imshow(resized)
imshow(yemum)
)

A = [];

for i = 1:size(yemum, 1)
    for j = 1:size(yemum, 2)
            A(i, j*2, 1) = yemum(i, j, 1);
            A(i, j*2, 2) = yemum(i, j, 2);
            A(i, j*2, 3) = yemum(i, j, 3);
            A(i, j*2-1, 1) = yemum(i, j, 1);
            A(i, j*2-1, 2) = yemum(i, j, 2);
            A(i, j*2-1, 3) = yemum(i, j, 3);
    end
end

resized = uint8(A);
imshow(resized)
imshow(yemum)
, 