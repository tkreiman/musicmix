function audioCropped = crop_audio(audio, fs, time, length)

% crops audio with sample rate fs at time=time and length / 2 before and
% length / 2 after. Time is a percent. Length is in seconds.


length_ind = round(double(length)/2 * fs);
startCrop = round(size(audio, 1) * time) - length_ind;
endCrop = round(size(audio, 1) * time) + length_ind;

audioCropped = audio(startCrop:endCrop, :);


