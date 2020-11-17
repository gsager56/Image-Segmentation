function [Perimeter, Perimeter_Values] = PxlPerimeter(bwImg, Row, Column, Radius)
%
%   Detailed explanation goes here
[Image_Rows, Image_Columns] = size(bwImg);
Count = 0;
Perimeter = [];
Perimeter_Values = [];

for HorzIndex = -Radius : Radius
    for VertIndex = -Radius : Radius
        if ( (Row + VertIndex) > Image_Rows) || ...
                ( (Row + VertIndex) < 1) || ...
                ( (Column + HorzIndex) > Image_Columns) || ...
                ( (Column + HorzIndex) < 1)
            % the pixel is on the border
        elseif (HorzIndex == 0) && (VertIndex == 0)
        else
            Count = Count + 1;
            Perimeter (Count, 1) = Row + VertIndex;
            Perimeter (Count, 2) = Column + HorzIndex;
            Perimeter_Values (Count) = bwImg( (Row + VertIndex), (Column + HorzIndex) );
        end
    end
end

end

