yemum = imread("/home/jacob/Documents/College/Sem5/DIP/LAB/lena.jpeg");
yemum_black = im2bw(yemum);
yemum_gray = rgb2gray(yemum);
imshow(yemum_black)

BW1=double(yemum_black);
BW2 = double(yemum_gray);
White_pix = 0;
Black_pix = 0;

for j=1:(204)-1
    for i=1:(247)-1
        if BW1(i,j)==0
            White_pix=White_pix+1;
        else
            Black_pix=Black_pix+1;
        end
    end
end

for j=1:(204)-1
    for i=1:(247)-1
        if i==j
            yemum_gray(i,j) = 255;
        end
        if j+i == 225
            yemum_gray(i,j) = 255;
        end
    end
end

for j=1:(204)-1
    for i=1:(247)-1
        if yemum_black(i,j)==0
            yemum_black(i,j)=1;
        else
            yemum_black(i,j)=0;
        end
    end
end

Black_pix;
White_pix;
imshow(yemum_gray)
imshow(yemum_black)
