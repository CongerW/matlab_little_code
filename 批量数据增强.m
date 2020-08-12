clear;clc;close all;
Files=dir('C:\Users\Cong\Desktop\hilens-dataset\*.jpg');
N=length(Files);
Names={};
Images={};
G = fspecial('gaussian',[5 5],2);

for k=1:N
    
        Names{k}=Files(k).name;
        Images{k}=imread(['C:\Users\Cong\Desktop\hilens-dataset\' Names{k}]); 
        Ig =imfilter(Images{k},G,'same');
        %imwrite(Ig,'C:\Users\Cong\Desktop\t2\ Names{k} .jpg');
        %imwrite([Ig,strcat(['C:\Users\Cong\Desktop\t2\' Names{k}]),'jpg']);
         path='C:\Users\Cong\Desktop\t2\'; 
        file=Files(k).name; 
        pathfile=fullfile(path,file); 
        imwrite(Ig,pathfile,'jpg');
                
        
end


