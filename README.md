# gender-recognition-with-voice
Recognizing the gender by extracting the power spectrum peak frequency - Signals and systems Course (Spring 2019)
Project intuition 
Typical human speech ranges between 50 Hz and 300 Hz. Most men typically range between 85-180Hz, 
and most women between 165-255Hz. If we look at a spectrum of audio for English speakers, we get a 
pretty substantial difference between the genders. This is of course not super surprising to anyone 
with a pair of ears 
There are numerous techniques used to distinguish between male and female voice with above 99% 
accuracy. In this project, you need to implement a simple technique that is based on pick frequencies 
in male/female power spectrums. 
Dataset for this project is provided in voices folder, voices are manually selected and downloaded 
from, which is intended for accent-related language studies. 
Voice samples are 12 mp3 files (thus data and sampling frequency are both provided) from English 
speakers with American accent, who are all repeating a same nonsense sentence. 
Peak frequency is measured as 122 Hz for male speakers 212 Hz for females 

Project definition 
Step 1 
You need to watch the tutorial about Fourier transform for spectral analysis [3] that can be 
downloaded from here 
Note that this is a part of your project.
Step 2 
Write a Matlab script which can load an mp3 voice file and plot its power spectrum. 
For example, power spectrum for v0.mp3 (a female speaker) will be :


And for v1.mp3 (a male speaker) will be :

Step 3 
Write a Matlab function which gets an mp3 file address as input and returns the peak frequency of its 
power spectrum and using this function, write a Matlab script which gets address of a folder 
containing unlabeled voice samples and label them with male/female according to mentioned peak 
frequencies. 
Step 4 
Propose any methods that can be used to improve the accuracy of our gender recognition system. 
Note that this is a part of your project. 


References 
[1] https://erikbern.com/2017/02/01/language-pitch.html
[2] http://accent.gmu.edu
[3] https://www.udemy.com/signal-processing/
