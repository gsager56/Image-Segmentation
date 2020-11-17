function varargout = Targeting(varargin)
% TARGETING MATLAB code for Targeting.fig
%      TARGETING, by itself, creates a new TARGETING or raises the existing
%      singleton*.
%
%      H = TARGETING returns the handle to a new TARGETING or the handle to
%      the existing singleton*.
%
%      TARGETING('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in TARGETING.M with the given input arguments.
%
%      TARGETING('Property','Value',...) creates a new TARGETING or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Targeting_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Targeting_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Targeting

% Last Modified by GUIDE v2.5 03-May-2018 17:07:19

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Targeting_OpeningFcn, ...
                   'gui_OutputFcn',  @Targeting_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT
end

% --- Executes just before Targeting is made visible.
function Targeting_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Targeting (see VARARGIN)

% Choose default command line output for Targeting
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Targeting wait for user response (see UIRESUME)
% uiwait(handles.figure1);
end

% --- Outputs from this function are returned to the command line.
function varargout = Targeting_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;
end


function RedNameEdit_Callback(hObject, eventdata, handles)
% hObject    handle to RedNameEdit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of RedNameEdit as text
%        str2double(get(hObject,'String')) returns contents of RedNameEdit as a double
end

% --- Executes during object creation, after setting all properties.
function RedNameEdit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to RedNameEdit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
end


function FileInputEdit_Callback(hObject, eventdata, handles)
% hObject    handle to FileInputEdit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of FileInputEdit as text
%        str2double(get(hObject,'String')) returns contents of FileInputEdit as a double
end

% --- Executes during object creation, after setting all properties.
function FileInputEdit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to FileInputEdit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
end



function GreenNameEdit_Callback(hObject, eventdata, handles)
% hObject    handle to GreenNameEdit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of GreenNameEdit as text
%        str2double(get(hObject,'String')) returns contents of GreenNameEdit as a double
end


% --- Executes during object creation, after setting all properties.
function GreenNameEdit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to GreenNameEdit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
end



function BlueNameEdit_Callback(hObject, eventdata, handles)
% hObject    handle to BlueNameEdit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of BlueNameEdit as text
%        str2double(get(hObject,'String')) returns contents of BlueNameEdit as a double
end


% --- Executes during object creation, after setting all properties.
function BlueNameEdit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to BlueNameEdit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
end


% --- Executes on button press in FileExportEdit.
function FileExportEdit_Callback(hObject, eventdata, handles)
% hObject    handle to FileExportEdit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
tic
set(handles.ErrorPanel, 'Visible', 'off')
set(handles.RunningText, 'Visible', 'on')
set(handles.Results_Panel, 'Visible', 'off')
drawnow

Folder_Name = get (handles.FileInputEdit, 'string');

% Check if the folder exists
if (isempty(Folder_Name)) || (exist(Folder_Name) == 0)
    Error_Message = sprintf('The folder, "%s", could not be found.', Folder_Name);
    set(handles.ErrorText, 'String', Error_Message)
    set(handles.ErrorPanel, 'Visible', 'on')
    set(handles.RunningText, 'Visible', 'off')
    return
end

Image_Names = GetFiles(Folder_Name);

% Check that at least one image is in the folder
if isempty(Image_Names)
    Error_Message = sprintf('No images were found in %s, please put at least one .tif, .jpg, .png, or .bmp image in %s', ...
        Folder_Name, Folder_Name);
    set(handles.ErrorText, 'String', Error_Message)
    set(handles.ErrorPanel, 'Visible', 'on')
    set(handles.RunningText, 'Visible', 'off')
    return
else
    Folder_Path = Image_Names(1).folder;
    ForwardSlash = '\';
    Analysis_Folder_Path = sprintf ('%s%sIF_Analysis', Folder_Path, ForwardSlash);
end

% Check that the images were not already analyzed
if (exist(Analysis_Folder_Path) ~= 0)
    Error_Message = sprintf('Please delete or rename "IF_Analysis" in the folder "%s"', Folder_Name);
    set(handles.ErrorText, 'String', Error_Message)
    set(handles.ErrorPanel, 'Visible', 'on')
    set(handles.RunningText, 'Visible', 'off')
    return
else
    mkdir(Analysis_Folder_Path)
end

% Get the color of the Organelle
OrganelleButton = get(handles.OrganelleColorButtonGroup, 'SelectedObject');

switch ( get(OrganelleButton, 'Tag'))
    case 'RedOrganelleButton'
        Organelle_Color = 1;
    case 'GreenOrganelleButton'
        Organelle_Color = 2;
    case 'BlueOrganelleButton'
        Organelle_Color = 3;
    otherwise
        Error_Message = 'Error: The button pressed for the organelle color could not be determined.';
        set(handles.ErrorText, 'String', Error_Message)
        set(handles.ErrorPanel, 'Visible', 'on')
        set(handles.RunningText, 'Visible', 'off')
        return
end


% Get the color of the what is being measured
MeasuringButton = get(handles.MeasuringColorButtonGroup, 'SelectedObject');

switch ( get(MeasuringButton, 'Tag')) 
    case 'RedMeasureButton'
        Measuring_Color = 1;
    case 'GreenMeasureButton'
        Measuring_Color = 2;
    case 'BlueMeasureButton'
        Measuring_Color = 3;
    otherwise
        Error_Message = 'Error: The button pressed for the Measure color could not be determined.';
        set(handles.ErrorText, 'String', Error_Message)
        set(handles.ErrorPanel, 'Visible', 'on')
        set(handles.RunningText, 'Visible', 'off')
        return
end

% Find color of nucleus
if Organelle_Color == 1
    if Measuring_Color == 2
        Nucleus_Color = 3;
    elseif Measuring_Color == 3
        Nucleus_Color = 2;
    end
elseif Organelle_Color == 2
    if Measuring_Color == 1
        Nucleus_Color = 3;
    elseif Measuring_Color == 3
        Nucleus_Color = 1;
    end
elseif Organelle_Color == 3
    if Measuring_Color == 1
        Nucleus_Color = 2;
    elseif Measuring_Color == 2
        Nucleus_Color = 1;
    end
end

Image_Name_Array = {};
Organelle_Pieces_Vector = [];
Nucleus_Area_Vector = [];
Cell_Area_Vector = [];
Cytosol_Area_Vector = [];
Organelle_Area_Vector = [];
Percent_Targeting_Vector = [];
Density_Ratio_Vector = [];
Cell_Number = 0;

for ImageIndex = 1 : size (Image_Names, 1) 
    Image_File_Path = sprintf ('%s%s%s', Folder_Path, ForwardSlash, Image_Names(ImageIndex).name);
    Image = imread(Image_File_Path);
    [Image_Rows, Image_Columns, ~] = size (Image);
    Measuring_Image = Image(:,:,Measuring_Color);
    Organelle_Image = Image(:,:,Organelle_Color);
    Nucleus_Image = Image(:,:,Nucleus_Color);
    Display_Image = Image;
    
    %% MEASURE FIRST ORDER APPROXIMATIONS OF EACH IMAGE COLOR
    % ORGANELLE
    Organelle_Threshold = multithresh(Organelle_Image);
    BW_Organelle = Organelle_Image >= Organelle_Threshold;
    
    % Nucleus part 1
    Initial_Nucleus_Threshold = multithresh(Nucleus_Image);
    Initial_BW_Nucleus_Noise = imfill ( (Nucleus_Image >= Initial_Nucleus_Threshold), 'holes' );
    Initial_BW_Nucleus_Noise_Connectome = bwconncomp(Initial_BW_Nucleus_Noise);
    All_Nucleus_Sizes = [];
    
    for GroupIndex = 1 : Initial_BW_Nucleus_Noise_Connectome.NumObjects
       All_Nucleus_Sizes(GroupIndex) = size(Initial_BW_Nucleus_Noise_Connectome.PixelIdxList {1, GroupIndex}, 1);
    end
    Sorted_Nucleus_Sizes = sort(All_Nucleus_Sizes);
    Min_Nucleus_Area = .5 * Sorted_Nucleus_Sizes(Initial_BW_Nucleus_Noise_Connectome.NumObjects - 1);
    Max_Nucleus_Area = Sorted_Nucleus_Sizes(end);
    
    BW_Nucleus_Noise = imbinarize (Nucleus_Image, 'adaptive');
    No_Nucleus = Nucleus_Image <= (mode(Nucleus_Image) * 2);
    for Row = 1 : Image_Rows
        for Column = 1 : Image_Columns
            if No_Nucleus(Row, Column) == 1
                BW_Nucleus_Noise (Row, Column) = 0;
            end
        end
    end
    BW_Nucleus_Noise = imfill(BW_Nucleus_Noise, 'holes');
    BW_Nucleus = SizeFilter(BW_Nucleus_Noise, Min_Nucleus_Area, (Image_Rows * Image_Columns) );
    
    % Finding transfected cells
    Cell_Threshold = multithresh(Measuring_Image);
    Pre_BW_Cell = imfill ((Measuring_Image >= Cell_Threshold), 'holes');
    Pre_BW_Cell_Connectome = bwconncomp(Pre_BW_Cell);

    BW_Cell = zeros (Image_Rows, Image_Columns);
    Sizes = [];
    for GroupIndex = 1 : Pre_BW_Cell_Connectome.NumObjects
        Sizes (GroupIndex) = size (Pre_BW_Cell_Connectome.PixelIdxList {1, GroupIndex}, 1);
        Nucleus_Sum = 0;
        Row_Vector = [];
        Column_Vector = [];
        for GroupPxlIdx = 1 : size (Pre_BW_Cell_Connectome.PixelIdxList {1, GroupIndex}, 1)
            [Row, Column] = ind2sub ( [Image_Rows, Image_Columns], ...
                Pre_BW_Cell_Connectome.PixelIdxList {1, GroupIndex} (GroupPxlIdx, 1) );
            if BW_Nucleus (Row, Column) == 1
                Nucleus_Sum = Nucleus_Sum + 1;
            end
            Row_Vector (GroupPxlIdx) = Row;
            Column_Vector (GroupPxlIdx) = Column;
        end
        
        if Nucleus_Sum >= 0
            for PxlIdx = 1 : length(Row_Vector)
                Row = Row_Vector(PxlIdx);
                Column = Column_Vector(PxlIdx);
                BW_Cell (Row, Column) = 1;
            end
        end
    end
    BW_Cell = imfill(BW_Cell, 'holes');
    BW_Cell_Connectome = bwconncomp(BW_Cell);
    BW_Cell_Sizes = [];
    for GroupIndex = 1 : BW_Cell_Connectome.NumObjects
        BW_Cell_Sizes (GroupIndex) = size (BW_Cell_Connectome.PixelIdxList {1, GroupIndex}, 1);
    end
    
    Min_BW_Cell_Area = (max(BW_Cell_Sizes)) * .2;
    Max_BW_Cell_Area = max(BW_Cell_Sizes);
    
    % NUCLEUS
    Nucleus_Connectome = bwconncomp(BW_Nucleus);
    NT_Nucleus = zeros(Image_Rows, Image_Columns);
    for GroupIndex = 1 : Nucleus_Connectome.NumObjects
        Cell_Amount = 0;
        Row_Vector = [];
        Column_Vector = [];
        for GroupPxlIdx = 1 : size (Nucleus_Connectome.PixelIdxList {1, GroupIndex}, 1)
           [Row, Column] = ind2sub ( [Image_Rows, Image_Columns], ...
                Nucleus_Connectome.PixelIdxList {1, GroupIndex} (GroupPxlIdx, 1) );
            Row_Vector (GroupPxlIdx) = Row;
            Column_Vector (GroupPxlIdx) = Column;
            if BW_Cell(Row, Column) == 1
                % This pixel overlays a transfected cell
                Cell_Amount = Cell_Amount + 1;
            end
        end
        
        if Cell_Amount < 10
            % This nucleus is in an untransfected cell
            for PxlIdx =  1 : length(Row_Vector)
                Row = Row_Vector (PxlIdx);
                Column = Column_Vector (PxlIdx);
                NT_Nucleus (Row, Column) = 1;
            end
        end
    end
    
    NT_Nucleus_Sizes = [];
    NT_Nucleus_Connectome = bwconncomp(NT_Nucleus);
    
    for GroupIndex = 1 : NT_Nucleus_Connectome.NumObjects
        NT_Nucleus_Sizes (GroupIndex) = size(NT_Nucleus_Connectome.PixelIdxList {1, GroupIndex}, 1);
    end
    
    if NT_Nucleus_Connectome.NumObjects == 0
        Min_NT_Nucleus_Size = 0;
    else
        Min_NT_Nucleus_Size = min(NT_Nucleus_Sizes);
    end
    
    T_Nucleus_Pixel = zeros(Image_Rows, Image_Columns);
    
    for GroupIndex = 1 : Nucleus_Connectome.NumObjects
        Found = false;
        for GroupPxlIdx = 1 : size (Nucleus_Connectome.PixelIdxList {1, GroupIndex}, 1)
            if Found == false
                [Row, Column] = ind2sub ( [Image_Rows, Image_Columns], ...
                    Nucleus_Connectome.PixelIdxList {1, GroupIndex} (GroupPxlIdx, 1) );
                if BW_Cell (Row, Column) == 1
                    T_Nucleus_Pixel (Row, Column) = 1;
                    Found = true;
                end
            end
        end
    end
    
    NT_Organelle = zeros(Image_Rows, Image_Columns);
    for RowIndex = 1 : Image_Rows
        for ColumnIndex = 1 : Image_Columns
            if BW_Cell (RowIndex, ColumnIndex) == 0
                if BW_Organelle (RowIndex, ColumnIndex) == 1
                    NT_Organelle(RowIndex, ColumnIndex) = 1;
                end
            end
        end
    end
    
    %% FIND OPTIMAL THRESHOLD FOR TRANSFECTED CELL INTENSITY
    Count = 0;
    NumObjects = [];
    IntensityVector = [];
    
    for IntensityIndex = mode(mode(Measuring_Image)) : multithresh(Measuring_Image)
        Filter_Image = Measuring_Image >= IntensityIndex;
        Connectome = bwconncomp(Filter_Image);
        Objects = 0;
        Do_Not_Count = false;
        Test = zeros(Image_Rows, Image_Columns);
        for ObjectIndex = 1 : Connectome.NumObjects
            
            if (size (Connectome.PixelIdxList {1, ObjectIndex}, 1) >= Min_BW_Cell_Area)
                T_Nucleus_Pixel_Sum = 0;
                NT_Nucleus_Sum = 0;
                Nucleus_Sum = 0;
                Cell_Sum = (size (Connectome.PixelIdxList {1, ObjectIndex}, 1));
                Row_Vector = [];
                Column_Vector = [];
                
                for GroupPxlIdx = 1 : size (Connectome.PixelIdxList {1, ObjectIndex}, 1)
                    
                    [Row, Column] = ind2sub ( [Image_Rows, Image_Columns], ...
                        Connectome.PixelIdxList {1, ObjectIndex} (GroupPxlIdx, 1) );
                    
                    T_Nucleus_Pixel_Sum = T_Nucleus_Pixel_Sum + double( T_Nucleus_Pixel (Row, Column) );
                    NT_Nucleus_Sum = NT_Nucleus_Sum + double( NT_Nucleus (Row, Column) );
                    Nucleus_Sum = Nucleus_Sum + double(BW_Nucleus(Row, Column));
                    Row_Vector (GroupPxlIdx) = Row;
                    Column_Vector (GroupPxlIdx) = Column;
                end
                
                if ((NT_Nucleus_Sum <= (Min_NT_Nucleus_Size * .2)) || (Min_NT_Nucleus_Size == 0)) && ...
                        ((Cell_Sum <= (Max_BW_Cell_Area * 10) && (T_Nucleus_Pixel_Sum == 1 ||...
                        (Nucleus_Sum >= (Max_Nucleus_Area * .1) && Nucleus_Sum <= (Max_Nucleus_Area * 2)))) || ...
                        (Cell_Sum <= (Max_BW_Cell_Area * 10)) && (T_Nucleus_Pixel_Sum == 2 || ...
                        (Nucleus_Sum >= (Max_Nucleus_Area * .1) && Nucleus_Sum <= (Max_Nucleus_Area * 2) )))
                        
                    Objects = Objects + 1;
                    for Idx = 1 : length(Column_Vector)
                        Row = Row_Vector(Idx);
                        Column = Column_Vector(Idx);
                        Test(Row, Column) = ObjectIndex;
                    end
                end
                
                if ((NT_Nucleus_Sum <= (Min_NT_Nucleus_Size * .2)) || (Min_NT_Nucleus_Size == 0))
                    if T_Nucleus_Pixel_Sum == 1
                        Objects = Objects + 1;
                        for Idx = 1 : length(Column_Vector)
                            Row = Row_Vector(Idx);
                            Column = Column_Vector(Idx);
                            Test(Row, Column) = ObjectIndex;
                        end

                        
                    elseif T_Nucleus_Pixel_Sum == 2
                        Objects = Objects + 1;
                        for Idx = 1 : length(Column_Vector)
                            Row = Row_Vector(Idx);
                            Column = Column_Vector(Idx);
                            Test(Row, Column) = ObjectIndex;
                        end

                        
                    elseif (Nucleus_Sum >= (Max_Nucleus_Area * .1) && Nucleus_Sum <= (Max_Nucleus_Area * 2) )
                        Objects = Objects + 1;
                        for Idx = 1 : length(Column_Vector)
                            Row = Row_Vector(Idx);
                            Column = Column_Vector(Idx);
                            Test(Row, Column) = ObjectIndex;
                        end

                        
                    end
                end
                
                if (Nucleus_Sum > (Max_Nucleus_Area * 2)) || ...
                    (T_Nucleus_Pixel_Sum > 2) || ...
                    Cell_Sum > (Max_BW_Cell_Area * 10)
                
                    Do_Not_Count = true;
                end
            end
        end
        
        if (Objects <= sum(sum(T_Nucleus_Pixel))) && (Objects > 0) && Do_Not_Count == false
            Count = Count + 1;
            NumObjects(Count) = Objects; 
            IntensityVector(Count) = IntensityIndex; 
        elseif Do_Not_Count == true
            disp(IntensityIndex)
        end
    end

    Cells = mode(NumObjects);
    FindThresh = true;
    
    for ObjectIndex = 1 : length(NumObjects)
        if NumObjects(ObjectIndex) == Cells && ...
                FindThresh == true
            
            Threshold = IntensityVector(ObjectIndex);
            FindThresh = false;
        end
    end
    
    %% LABEL TRANSFECTED CELLS FROM 2 TO INFINTIY
    Pre_Thresh_Signal = Measuring_Image >= Threshold;
    Pre_Thresh_Signal_Connectome = bwconncomp(Pre_Thresh_Signal);
    Thresh_Signal = zeros(Image_Rows, Image_Columns);
    for GroupIndex = 1 : Pre_Thresh_Signal_Connectome.NumObjects
        Row_Vector = [];
        Column_Vector = [];
        Count_Cell = false;
        for GroupPxlIdx = 1 : size (Pre_Thresh_Signal_Connectome.PixelIdxList {1, GroupIndex}, 1)
            [Row, Column] = ind2sub ( [Image_Rows, Image_Columns], ...
                Pre_Thresh_Signal_Connectome.PixelIdxList {1, GroupIndex} (GroupPxlIdx, 1) );
            Row_Vector (GroupPxlIdx) = Row;
            Column_Vector (GroupPxlIdx) = Column;
            if T_Nucleus_Pixel (Row, Column) == 1
                Count_Cell = true;
            end
        end
        
        if Count_Cell == true
            for PxlIdx = 1 : length(Row_Vector)
                Row = Row_Vector(PxlIdx);
                Column = Column_Vector(PxlIdx);
                Thresh_Signal (Row, Column) = 1;
            end
        end
    end
    Thresh_Signal_Connectome = bwconncomp(Thresh_Signal);
    All_Cell_Sizes = [];
    
    for GroupIndex = 1 : Thresh_Signal_Connectome.NumObjects
       All_Cell_Sizes(GroupIndex) = size(Thresh_Signal_Connectome.PixelIdxList {1, GroupIndex}, 1);
    end
    
    Sorted_All_Cell_Sizes = sort(All_Cell_Sizes);
    Last_Piece = length (Sorted_All_Cell_Sizes);
    Max_Cell_Area = Sorted_All_Cell_Sizes ( (Last_Piece) );
    Min_Cell_Area = Sorted_All_Cell_Sizes ( (Last_Piece - (Cells - 1)) );
    
    Only_Cells = SizeFilter (Thresh_Signal, Min_Cell_Area, (Image_Rows * Image_Columns));
    Only_Cells_Connectome = bwconncomp(Only_Cells);
    Label_Image = zeros(Image_Rows, Image_Columns);
    Label = 1;
    for GroupIndex = 1 : Only_Cells_Connectome.NumObjects
        Row_Vector = [];
        Column_Vector = [];
        Count_Cell = false;
        for GroupPxlIdx = 1 : size (Only_Cells_Connectome.PixelIdxList {1, GroupIndex}, 1)
            [Row, Column] = ind2sub ( [Image_Rows, Image_Columns], ...
                Only_Cells_Connectome.PixelIdxList {1, GroupIndex} (GroupPxlIdx, 1) );
            Row_Vector (GroupPxlIdx) = Row;
            Column_Vector (GroupPxlIdx) = Column;
            if T_Nucleus_Pixel (Row, Column) == 1
                Count_Cell = true;
            end
        end
        
        if Count_Cell == true
            Label = Label + 1;
            for PxlIdx = 1 : length(Row_Vector)
                Row = Row_Vector(PxlIdx);
                Column = Column_Vector(PxlIdx);
                Label_Image (Row, Column) = Label;
            end
        end
    end
    
    %% CONNECT FALSE POSITIVE PIXELS
    Noise_Lower = SizeFilter (Thresh_Signal, 0, (Min_Cell_Area - 1));
    Inverted_Measuring_Signal = Measuring_Image <= Threshold;
    Inverted_Signal_Connectome = bwconncomp(Inverted_Measuring_Signal);
    for GroupIndex = 1 : Inverted_Signal_Connectome.NumObjects
        Inverted_Sizes (GroupIndex) = size ( Inverted_Signal_Connectome.PixelIdxList {1, GroupIndex}, 1);
    end
    Extracellular_Space_Area = max(Inverted_Sizes);
    Noise_Other = SizeFilter(Inverted_Measuring_Signal, 0, (Extracellular_Space_Area - 1));
    Total_Noise = Noise_Lower + Noise_Other;
    
    Box_Radius = 3;
    Running = true;
    Sum_Initial = sum(sum(Total_Noise));
    Count = 0;
    while Running
        for RowIndex = 1 : (Box_Radius * 2) : Image_Rows
           for ColumnIndex = 1 : (Box_Radius * 2) : Image_Columns 
               if Total_Noise (RowIndex,ColumnIndex) == 0
                   [Perimeter_Coordinates, Perimeter_Values] = PxlPerimeter(Total_Noise, ...
                       RowIndex, ColumnIndex, Box_Radius);

                   if sum(Perimeter_Values) > 1
                       Test = zeros(Image_Rows, Image_Columns);
                       for PerimeterIndex = 1 : size(Perimeter_Coordinates, 1)
                           RowRadius = Perimeter_Coordinates(PerimeterIndex, 1);
                           ColumnRadius = Perimeter_Coordinates(PerimeterIndex, 2);
                           Test(RowRadius, ColumnRadius) = Perimeter_Values(PerimeterIndex);
                       end
                       
                       [~ , NumObjects] = bwlabel(Test);
                       
                       if NumObjects > 1
                           Total_Noise (RowIndex, ColumnIndex) = 1;
                           for PerimeterIndex = 1 : size(Perimeter_Coordinates, 1)
                               Total_Noise ( (Perimeter_Coordinates(PerimeterIndex, 1)), ...
                                   (Perimeter_Coordinates(PerimeterIndex, 2)) ) = 1;
                           end
                       end
                   end
               end
           end
        end
        Total_Noise = imfill(Total_Noise, 'holes');
        Sum_Final = sum(sum(Total_Noise));

        if Sum_Final == Sum_Initial
           Running = false; 
        else
            Sum_Initial = Sum_Final;
        end
    end
    disp('Done Connecting Noise')
    
    %% DELETE GROUPS OF FALSE POSITIVE PIXELS THAT OVERLAY A NON-TRANSFECTED NUCLEUS OR ORGANELLE
    Noise_Connectome = bwconncomp (Total_Noise);
    Filter_Noise = zeros(Image_Rows,Image_Columns);
    for GroupIndex = 1 : Noise_Connectome.NumObjects
        NT_Nucleus_Amount = 0;
        NT_Organelle_Amount = 0;
        Row_Vector = [];
        Column_Vector = [];
        Noise = false;
        for GroupPxlIndex = 1 : size ( Noise_Connectome.PixelIdxList {1, GroupIndex}, 1 )
            [Row, Column] = ind2sub ( [Image_Rows, Image_Columns], ...
                Noise_Connectome.PixelIdxList {1, GroupIndex} (GroupPxlIndex, 1) );
            NT_Nucleus_Amount = NT_Nucleus_Amount + double( NT_Nucleus (Row, Column) );
            NT_Organelle_Amount = NT_Organelle_Amount + double( NT_Organelle (Row, Column) );
            Row_Vector (GroupPxlIndex) = Row;
            Column_Vector (GroupPxlIndex) = Column;
        end
        
        if Min_NT_Nucleus_Size == 0 && ...
                NT_Organelle_Amount < 20
            % count this group
            for PixelIndex = 1 : length(Row_Vector)
                Row = Row_Vector(PixelIndex);
                Column = Column_Vector(PixelIndex);
                Filter_Noise (Row, Column) = 1;
            end
        elseif NT_Nucleus_Amount < (Min_NT_Nucleus_Size * .1) && ...
                NT_Organelle_Amount < 20
            % count this group
            for PixelIndex = 1 : length(Row_Vector)
                Row = Row_Vector(PixelIndex);
                Column = Column_Vector(PixelIndex);
                Filter_Noise (Row, Column) = 1;
            end
        end
    end
    
    % overlay cell on top of trash
    for RowIndex = 1 : Image_Rows
        for ColumnIndex = 1 : Image_Columns
            if Label_Image (RowIndex, ColumnIndex) > 1
            elseif Filter_Noise (RowIndex, ColumnIndex) == 1
                Label_Image (RowIndex, ColumnIndex) = 1;
            end
        end
    end
    
    %% CONNECT NOISE TO NEIGHBORING CELL
    % Finds cell boundary coordinates
    Box_Radius = 1;
    Cell_Border_Coordinates = {};
    for RowIndex = 1 : Image_Rows
        for ColumnIndex = 1 : Image_Columns
            if Label_Image (RowIndex, ColumnIndex) > 1
                %This pixel is a cell
                Cell_Type = Label_Image (RowIndex, ColumnIndex);
                [Perimeter_Coordinates, Perimeter_Values] = PxlPerimeter(Label_Image, ...
                       RowIndex, ColumnIndex, Box_Radius);
               if sum(Perimeter_Values == 1) >= 1
                   % there's a Noise pixel next to this one
                   for ValueIndex = 1 : length(Perimeter_Values)
                       if Perimeter_Values(ValueIndex) == 1
                           % store coordinate
                           if size(Cell_Border_Coordinates, 2) < (Cell_Type)
                               Cell_Border_Coordinates {1, Cell_Type} (1, 1) = RowIndex; % Row
                               Cell_Border_Coordinates {1, Cell_Type} (1, 2) = ColumnIndex; % Column
                           else
                               New_Row = size( (Cell_Border_Coordinates{1, Cell_Type}), 1) + 1;
                               Cell_Border_Coordinates {1, Cell_Type} (New_Row, 1) = RowIndex; % Row
                               Cell_Border_Coordinates {1, Cell_Type} (New_Row, 2) = ColumnIndex; % Column
                           end
                       end
                   end
               end
            end
        end
    end
    
    % expand cells
    Box_Radius = 1;
    Sum_Initial = sum(sum(Label_Image));
    Running = true;
    Count = 0;
    New_Cell_Border_Coordinates = {};
    while Running
        for CellIdx = 2 : size(Cell_Border_Coordinates, 2)
            for CellPxlIdx = 1 : size(Cell_Border_Coordinates{1, CellIdx}, 1)
                Signal_Row = Cell_Border_Coordinates {1, CellIdx} (CellPxlIdx, 1);
                Signal_Column = Cell_Border_Coordinates{1, CellIdx} (CellPxlIdx, 2);
                [Perimeter_Coordinates, Perimeter_Values] = PxlPerimeter(Label_Image, ...
                       Signal_Row, Signal_Column, Box_Radius);
                if sum(Perimeter_Values == 1) >= 1

                    for ValueIndex = 1 : length(Perimeter_Values)
                       if Perimeter_Values(ValueIndex) == 1
                           % replace noise pixel with cell type (aka CellIdx)
                           Noise_Row = Perimeter_Coordinates (ValueIndex, 1);
                           Noise_Column = Perimeter_Coordinates (ValueIndex, 2);
                           Label_Image (Noise_Row, Noise_Column) = CellIdx;
                           % record the coordinate for next time
                           if size(New_Cell_Border_Coordinates, 2) < (CellIdx)
                               New_Cell_Border_Coordinates {1, CellIdx} (1, 1) = Noise_Row; % Row
                               New_Cell_Border_Coordinates {1, CellIdx} (1, 2) = Noise_Column; % Column
                           else
                               New_Row = size(New_Cell_Border_Coordinates{1, CellIdx}, 1) + 1;
                               New_Cell_Border_Coordinates {1, CellIdx} (New_Row, 1) = Noise_Row; % Row
                               New_Cell_Border_Coordinates {1, CellIdx} (New_Row, 2) = Noise_Column; % Column
                           end
                       end
                   end
                end
            end
        end
        Cell_Border_Coordinates = New_Cell_Border_Coordinates;
        Sum_Final = sum(sum(Label_Image));
        if Sum_Final == Sum_Initial
            Running = false;
        else
            Sum_Initial = Sum_Final;
        end
    end
    disp('Done expanding cells')
    
    % Make array of pixel coordinates for each cell type
    Cell_Positions = {};
    for CellIdx = 2 : max(max(Label_Image))
        Cell_Positions {1, CellIdx} = zeros(Image_Rows, Image_Columns);
    end
    
    for RowIndex = 1 : Image_Rows
        for ColumnIndex = 1 : Image_Columns
            if Label_Image (RowIndex, ColumnIndex) > 1
                Cell_Type = Label_Image (RowIndex, ColumnIndex);
                Cell_Positions {1, Cell_Type} (RowIndex, ColumnIndex) = 1;
            end
        end
    end
    
    %% MAKE MEASUREMENTS AND DISPLAY CELL AND ORGANELLE MARKERS
    Box_Radius = 1;
    for CellType = 2 : size(Cell_Positions, 2)
        Cell_Number = Cell_Number + 1;
        Cell_Label = sprintf( 'Cell %d', Cell_Number );
        Nucleus_Rows = [];
        Nucleus_Columns = [];
        Nucleus_Count = 0;
        Measured_Intensity = 0;
        Cell_Area_Pixels = 0;
        Organelle_Intensity = 0;
        Organelle_Area_Pixels = 0;
        Nucleus_Area = 0;
        Signal_Organelle_Overlap = 0;
        Cell_Positions {1, CellType} = imfill( (Cell_Positions {1, CellType}), 'holes');

        for RowIndex = 1 : Image_Rows
            for ColumnIndex = 1 : Image_Columns
                if Cell_Positions {1, CellType} (RowIndex, ColumnIndex) == 1

                    [Perimeter_Coordinates, Perimeter_Values] = PxlPerimeter( Cell_Positions {1, CellType}, ...
                           RowIndex, ColumnIndex, Box_Radius);

                    if sum(Perimeter_Values == 0) >= 1
                        Display_Image (RowIndex, ColumnIndex, Measuring_Color) = uint8(255);
                    end

                    Cell_Area_Pixels = Cell_Area_Pixels + 1;
                    Measured_Intensity = Measured_Intensity + double(Image(RowIndex, ColumnIndex, Measuring_Color));

                    if BW_Organelle (RowIndex, ColumnIndex) == 1
                        Organelle_Area_Pixels = Organelle_Area_Pixels + 1; 
                        Organelle_Intensity = Organelle_Intensity + double( Image (RowIndex, ColumnIndex, Organelle_Color )); 
                        Signal_Organelle_Overlap = Signal_Organelle_Overlap + double(Image(RowIndex, ColumnIndex, Measuring_Color));

                        [Perimeter_Coordinates, Perimeter_Values] = PxlPerimeter( BW_Organelle, ...
                               RowIndex, ColumnIndex, Box_Radius);

                        if sum(Perimeter_Values == 0) >= 1
                            Display_Image (RowIndex, ColumnIndex, Organelle_Color) = uint8(255);
                        end
                    end

                    if BW_Nucleus (RowIndex, ColumnIndex) == 1
                        Nucleus_Count = Nucleus_Count + 1;
                        Nucleus_Rows (Nucleus_Count) = RowIndex;
                        Nucleus_Columns (Nucleus_Count) = ColumnIndex;
                        Nucleus_Area = Nucleus_Area + 1;
                    end
                end       
            end
        end
        Text_Row = (floor((max(Nucleus_Rows) - min(Nucleus_Rows)) / 2)) + min(Nucleus_Rows);
        Text_Column = (floor((max(Nucleus_Columns) - min(Nucleus_Columns)) / 2)) + min(Nucleus_Columns);

        Display_Image = insertText(Display_Image, [Text_Column, Text_Row], Cell_Label, ...
            'FontSize', 20, 'TextColor', 'white', 'BoxOpacity', 0.0);
        Cytosol_Intensity = Measured_Intensity - Signal_Organelle_Overlap;

        [~, Organelle_Pieces] = bwlabel(BW_Organelle);
        Cytosol_Area_Pixels = Cell_Area_Pixels - Organelle_Area_Pixels;

        %Image_Name_Array {1, Cell_Number} = Image_Names(ImageIndex).name;
        Cell_Area_Vector (1, Cell_Number) = Cell_Area_Pixels;
        Organelle_Pieces_Vector (1, Cell_Number) = Organelle_Pieces;
        Nucleus_Area_Vector (1, Cell_Number) = Nucleus_Area;
        Cytosol_Area_Vector (1, Cell_Number) = Cytosol_Area_Pixels;
        Organelle_Area_Vector (1, Cell_Number) = Organelle_Area_Pixels;
        Percent_Targeting_Vector (1, Cell_Number) = (Organelle_Intensity / Measured_Intensity) * 100;
        Density_Ratio_Vector (1, Cell_Number) = (Cytosol_Intensity / Cytosol_Area_Pixels) / ...
            (Signal_Organelle_Overlap / Organelle_Area_Pixels); % the density ratio of the cytosol to organelle
    end
    
    ImageName = sprintf ('Measured_Boundary_%d.jpg', ImageIndex);
    Full_Image_Name = sprintf ('%s%s%s', Analysis_Folder_Path, ForwardSlash, ImageName);
    imwrite(Display_Image,Full_Image_Name);
    
end
    
Results_Array = {};
Results_Array = {' ', 'Original Image Name', 'Area of Cell', 'Area of Nucleus', 'Area of Cytosol',...
    'Area of Organelle', 'Pieces of Organelle','Percent Targeting', 'Density Ratio'};

Table_Array = {};

for ArrayIndex = 1 : (Cell_Number + 2)
    if ArrayIndex == (Cell_Number + 2)
        Table_Array {ArrayIndex, 1} = 'Standard Deviation';
        Results_Array {(ArrayIndex + 1), 1} = 'Standard Deviation';
    elseif ArrayIndex == (Cell_Number + 1)
        Table_Array {ArrayIndex, 1} = 'Average';
        Results_Array {(ArrayIndex + 1), 1} = 'Average';
    else
        Table_Array {ArrayIndex, 1} = sprintf( 'Cell %d', ArrayIndex );
        Results_Array {(ArrayIndex + 1), 1} = sprintf( 'Cell %d', ArrayIndex );
    end
end
    
Cell_Area_Average = sprintf ('%.2f', mean (Cell_Area_Vector));
Cell_Area_Standard_Deviation =  sprintf ('%.2f', std (Cell_Area_Vector));

Organelle_Pieces_Average = sprintf ('%.2f', mean(Organelle_Pieces_Vector));
Organelle_Pieces_Standard_Deviation = sprintf ('%.2f', std(Organelle_Pieces_Vector));

Nucleus_Area_Average = sprintf ('%.2f', mean(Nucleus_Area_Vector));
Nucleus_Area_Standard_Deviation = sprintf ('%.2f', std(Nucleus_Area_Vector));

Cytosol_Area_Average =  sprintf ('%.2f', mean(Cytosol_Area_Vector));
Cytosol_Area_Standard_Deviation =  sprintf ('%.2f', std(Cytosol_Area_Vector));

Organelle_Area_Average =  sprintf ('%.2f', mean(Organelle_Area_Vector));
Organelle_Area_Standard_Deviation =  sprintf ('%.2f', std(Organelle_Area_Vector));

Percent_Targeting_Average =  sprintf ('%.2f', mean(Percent_Targeting_Vector));
Percent_Targeting_Standard_Deviation =  sprintf ('%.2f', std(Percent_Targeting_Vector));

Density_Ratio_Average =  sprintf ('%.4f', mean(Density_Ratio_Vector));
Density_Ratio_Standard_Deviation =  sprintf ('%.4f', std(Density_Ratio_Vector));

for RowIndex = [1 : (Cell_Number + 2)] % which row to put in Results Array
    
    if RowIndex == (Cell_Number + 2)
        % standard deviation
        Results_Array {(RowIndex + 1), 2} = ' ';
        Table_Array {(RowIndex), 2} = ' ';

        Results_Array {(RowIndex + 1), 3} = Cell_Area_Standard_Deviation;
        Table_Array {(RowIndex), 3} = Cell_Area_Standard_Deviation;
        
        Results_Array {(RowIndex + 1), 4} = Nucleus_Area_Standard_Deviation;
        Table_Array {(RowIndex), 4} = Nucleus_Area_Standard_Deviation;

        Results_Array {(RowIndex + 1), 5} = Cytosol_Area_Standard_Deviation;
        Table_Array {(RowIndex), 5} = Cytosol_Area_Standard_Deviation;

        Results_Array {(RowIndex + 1), 6} = Organelle_Area_Standard_Deviation;
        Table_Array {(RowIndex), 6} = Organelle_Area_Standard_Deviation;
        
        Results_Array {(RowIndex + 1), 7} = Organelle_Pieces_Standard_Deviation;
        Table_Array {(RowIndex), 7} = Organelle_Pieces_Standard_Deviation;

        Results_Array {(RowIndex + 1), 8} = Percent_Targeting_Standard_Deviation;
        Table_Array {(RowIndex), 8} = Percent_Targeting_Standard_Deviation;

        Results_Array {(RowIndex + 1), 9} = Density_Ratio_Standard_Deviation;
        Table_Array {(RowIndex), 9} = Density_Ratio_Standard_Deviation;
        
    elseif RowIndex == (Cell_Number + 1)
        % average
        Results_Array {(RowIndex + 1), 2} = ' ';
        Table_Array {(RowIndex), 2} = ' ';

        Results_Array {(RowIndex + 1), 3} = Cell_Area_Average;
        Table_Array {(RowIndex), 3} = Cell_Area_Average;
        
        Results_Array {(RowIndex + 1), 4} = Nucleus_Area_Average;
        Table_Array {(RowIndex), 4} = Nucleus_Area_Average;

        Results_Array {(RowIndex + 1), 5} = Cytosol_Area_Average;
        Table_Array {(RowIndex), 5} = Cytosol_Area_Average;

        Results_Array {(RowIndex + 1), 6} = Organelle_Area_Average;
        Table_Array {(RowIndex), 6} = Organelle_Area_Average;
        
        Results_Array {(RowIndex + 1), 7} = Organelle_Pieces_Average;
        Table_Array {(RowIndex), 7} = Organelle_Pieces_Average;

        Results_Array {(RowIndex + 1), 8} = Percent_Targeting_Average;
        Table_Array {(RowIndex), 8} = Percent_Targeting_Average;

        Results_Array {(RowIndex + 1), 9} = Density_Ratio_Average;
        Table_Array {(RowIndex), 9} = Density_Ratio_Average;
        
    else
        Results_Array {(RowIndex + 1), 2} = Image_Name_Array {1, (RowIndex)};
        Table_Array {(RowIndex), 2} = Image_Name_Array {1, (RowIndex)};

        Results_Array {(RowIndex + 1), 3} = sprintf ('%.1f', Cell_Area_Vector (1, (RowIndex)));
        Table_Array {(RowIndex), 3} = sprintf ('%.1f', Cell_Area_Vector (1, (RowIndex)));
        
        Results_Array {(RowIndex + 1), 4} = sprintf ('%.1f', Nucleus_Area_Vector (1, (RowIndex)));
        Table_Array {(RowIndex), 4} = sprintf ('%.1f', Nucleus_Area_Vector (1, (RowIndex)));

        Results_Array {(RowIndex + 1), 5} = sprintf ('%.1f', Cytosol_Area_Vector (1, (RowIndex)));
        Table_Array {(RowIndex), 5} = sprintf ('%.1f', Cytosol_Area_Vector (1, (RowIndex)));

        Results_Array {(RowIndex + 1), 6} = sprintf ('%.1f', Organelle_Area_Vector (1, (RowIndex)));
        Table_Array {(RowIndex), 6} = sprintf ('%.1f', Organelle_Area_Vector (1, (RowIndex)));
        
        Results_Array {(RowIndex + 1), 7} = sprintf ('%.1f', Organelle_Pieces_Vector (1, (RowIndex)));
        Table_Array {(RowIndex), 7} = sprintf ('%.1f', Organelle_Pieces_Vector (1, (RowIndex)));

        Results_Array {(RowIndex + 1), 8} = sprintf ('%.2f', Percent_Targeting_Vector (1, (RowIndex)));
        Table_Array {(RowIndex), 8} = sprintf ('%.2f', Percent_Targeting_Vector (1, (RowIndex)));

        Results_Array {(RowIndex + 1), 9} = sprintf ('%.4f', Density_Ratio_Vector (1, (RowIndex)));
        Table_Array {(RowIndex), 9} = sprintf ('%.4f', Density_Ratio_Vector (1, (RowIndex)));
    end
end

CSV_Name = 'Results.csv';
CSV_Directory = sprintf ('%s%s%s', Analysis_Folder_Path, ForwardSlash, CSV_Name);

FileID = fopen (CSV_Directory, 'w');
    for RowIndex = 1 : (Cell_Number + 3)
        fprintf(FileID, '%s, %s, %s, %s, %s, %s, %s, %s, %s\n' ,Results_Array {RowIndex, :} );
    end
fclose(FileID)

set(handles.ResultsTable, 'Data', Table_Array)
set(handles.RunningText, 'Visible', 'off');
set(handles.Results_Panel, 'Visible', 'on');

toc
end

% --- Executes when entered data in editable cell(s) in ResultsTable.
function ResultsTable_CellEditCallback(hObject, eventdata, handles)
% hObject    handle to ResultsTable (see GCBO)
% eventdata  structure with the following fields (see MATLAB.UI.CONTROL.TABLE)
%	Indices: row and column indices of the cell(s) edited
%	PreviousData: previous data for the cell(s) edited
%	EditData: string(s) entered by the user
%	NewData: EditData or its converted form set on the Data property. Empty if Data was not changed
%	Error: error string when failed to convert EditData to appropriate value for Data
% handles    structure with handles and user data (see GUIDATA)

end

% --- Executes during object creation, after setting all properties.
function ResultsTable_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ResultsTable (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

end


% --- Executes during object creation, after setting all properties.
function RunningText_CreateFcn(hObject, eventdata, handles)
% hObject    handle to RunningText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
end


% --- Executes during object creation, after setting all properties.
function ErrorText_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ErrorText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
end



function FolderErrorEdit_Callback(hObject, eventdata, handles)
% hObject    handle to FolderErrorEdit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of FolderErrorEdit as text
%        str2double(get(hObject,'String')) returns contents of FolderErrorEdit as a double
end

% --- Executes during object creation, after setting all properties.
function FolderErrorEdit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to FolderErrorEdit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
end


% --- Executes during object creation, after setting all properties.
function OrganelleColorButtonGroup_CreateFcn(hObject, eventdata, handles)
% hObject    handle to OrganelleColorButtonGroup (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
end
