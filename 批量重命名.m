clc;clear all;
filePath = 'C:\Users\Cong\Desktop\t2\';
folderinfo = dir([filePath,'*.jpg']);
for i = 1:length(folderinfo)
    fileName = [filePath,folderinfo(i).name];
    fileName2 = strcat('gs2_',folderinfo(i).name);
    eval(['!rename' 32 fileName 32 fileName2]);
end