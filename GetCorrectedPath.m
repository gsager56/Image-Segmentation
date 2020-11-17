function [ OutputPath ] = GetCorrectedPath( InputPath )
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here

    switch computer
        case 'PCWIN'
            OutputPath = strrep(InputPath,'/','\');
        case 'PCWIN64'
            OutputPath = strrep(InputPath,'/','\');
        case 'GLNXA64'
            OutputPath = strrep(InputPath,'\','/');
        case 'MACI64'
            OutputPath = strrep(InputPath,'\','/');
    end;

end

