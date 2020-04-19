Create Strings as file list... soundFiles C:/Users/jmarkovits/desktop/pa_4/recordings/ne03/wavs/*.wav
select Strings soundFiles
numberOfFiles = Get number of strings

for i to numberOfFiles
	select Strings soundFiles
	soundName$ = Get string... i
	Read from file... C:/Users/jmarkovits/desktop/pa_4/recordings/ne03/wavs/'soundName$'
	Scale peak... 0.99
	Write to binary file... C:/Users/jmarkovits/desktop/pa_4/recordings/ne03/wavs/'soundName$'
	Remove
endfor