function x = emailFeatures(word_indices)
% Total number of words in the dictionary
n = 1899;

x = zeros(n, 1);

for i = 1:length(word_indices),
x(word_indices(i))=1;
end    

end
