function [Min_Size, Max_Size] = SizeThresh(BW_Img)
% This will filter out signals in a binary Img whose area is above
% HighThresh and below LowThresh
%   Detailed explanation goes here

[Img_Rows, Img_Columns, Img_Colors] = size(Img);
Connectome = bwconncomp(Img);
Filter_Img = zeros (Img_Rows, Img_Columns);

for PxlIdx = 1 : Connectome.NumObjects
    Size_Vector (PxlIdx) = (size ( Connectome.PixelIdxList {1, PxlIdx}, 1 );
end

Min_Size = mean(Size_Vector);
Max_Size = max(Size_Vector);

end

