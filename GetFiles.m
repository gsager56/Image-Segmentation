function [ Files ] = GetFiles( FilesPath )
%UNTITLED5 Summary of this function goes here
%   Detailed explanation goes here

    FilesPath = GetCorrectedPath(FilesPath);
    % Files = dir('nul');
    Info = ver('Matlab');
    Version = str2num( Info.Version ); 
    if ( Version > 9 )
        Files = struct('name',{},'folder',{},'date',{},'bytes',{},'isdir',{},'datenum',{});
    else
        Files = struct('name',{},'date',{},'bytes',{},'isdir',{},'datenum',{});
    end
    Output = dir(FilesPath);
    if (isempty(Output)) 
        % do nothing
    else
        for x=1:length(Output)
           switch true
               case (strcmp(Output(x).name(1), '.'))
                   % ignore
               case ( ...
                       ( strcmp( Output(x).name( (end - 3) : end ), '.tif' ) ) | ...
                       ( strcmp( Output(x).name( (end - 3) : end ), '.jpg' ) ) | ...
                       ( strcmp( Output(x).name( (end - 3) : end ), '.png' ) ) | ...
                       ( strcmp( Output(x).name( (end - 3) : end ), '.bmp' ) ) ...
                       ) == 0
                   % ignore
               case (Output(x).isdir == true)
                   % ignore
               otherwise
                   Files(length(Files) + 1,1) = Output(x);
           end
        end
    end    
end

