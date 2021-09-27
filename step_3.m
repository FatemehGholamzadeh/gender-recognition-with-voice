clear workspace;

% read audio files from a folder
audio_files = dir(fullfile('D:\matlabCodes\voices','*.mp3'));

    for k=1:numel(audio_files)
        filename=audio_files(k).name;        
        x=strcat('D:\matlabCodes\voices','\',filename);
        
%         finding peak frequency
        peakFrequency =peakFinder(x);
        
        
        man_dif = abs(peakFrequency - 122 )
        woman_dif = abs(peakFrequency - 212 )
        
%         if difference from man average is bigger then voice is for a
%         woman and vice versa 

        if man_dif > woman_dif 
               newLable=strcat('D:\matlabCodes\voices','\','woman-',filename);
                copyfile(x,newLable);
        else
                newLable=strcat('D:\matlabCodes\voices','\','man-',filename);
                copyfile(x,newLable); 
        end
    end