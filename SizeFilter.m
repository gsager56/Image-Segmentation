function Filter_Img = SizeFilter(Img,LowThresh, HighThresh)
% This will filter out signals in a binary Img whose area is above
% HighThresh and below LowThresh
%   Detailed explanation goes here

[Img_Rows, Img_Columns, Img_Colors] = size(Img);
Connectome = bwconncomp(Img);
Filter_Img = zeros (Img_Rows, Img_Columns);

for PxlIdx = 1 : Connectome.NumObjects
    if (size ( Connectome.PixelIdxList {1, PxlIdx}, 1 ) >= LowThresh) && ...
            (size ( Connectome.PixelIdxList {1, PxlIdx}, 1 ) <= HighThresh)
        for IdxColumn = 1 : (size ( Connectome.PixelIdxList {1, PxlIdx}, 1 ) )
        [Row, Column] = ind2sub ( [Img_Rows, Img_Columns], ...
            Connectome.PixelIdxList {1, PxlIdx} (IdxColumn, 1) );
        Filter_Img (Row, Column) = 1;
        end
    end
end

end