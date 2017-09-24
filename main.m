
function varargout = main(varargin)


% MAIN MATLAB code for main.fig
%      MAIN, by itself, creates a new MAIN or raises the existing
%      singleton*.
%
%      H = MAIN returns the handle to a new MAIN or the handle to
%      the existing singleton*.
%
%      MAIN('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in MAIN.M with the given input arguments.
%
%      MAIN('Property','Value',...) creates a new MAIN or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before main_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to main_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help main

% Last Modified by GUIDE v2.5 24-Sep-2017 16:15:15

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @main_OpeningFcn, ...
                   'gui_OutputFcn',  @main_OutputFcn, ...
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


% --- Executes just before main is made visible.
function main_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to main (see VARARGIN)

% Choose default command line output for main
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes main wait for user response (see UIRESUME)
% uiwait(handles.figure1);

clc;
global array category_filter;
array = getList();
global step;
step = 0;

% --- Outputs from this function are returned to the command line.
function varargout = main_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in nextbutton.
function nextbutton_Callback(hObject, eventdata, handles)
process(handles);


function restartbutton_Callback(hObject, eventdata, handles)
global step;
step = 0;
set(handles.nextbutton,'visible','on','enable','on'); % enable 'Next' button
set(handles.popupmenu1,'enable','on');  % enable Pop-up menu
set(handles.restartbutton,'string','Start over');   % change 'Start' button's name
set(handles.resulttxt,'string',char('  Your result here: ','  ...not available yet...'),'enable','off');   
cla(handles.image);
process(handles);


% --- Executes on selection change in popupmenu1.
function popupmenu1_Callback(hObject, eventdata, handles)


% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu1


% --- Executes during object creation, after setting all properties.
function popupmenu1_CreateFcn(hObject, eventdata, handles)


% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

%% Main function
function process(handles)
global array step brand_filter category_filter cpu_filter screensize_filter gpu_filter ram_filter storage_filter capacity_filter resolution_filter price_filter;
global str;
global category brand cpu screensize ram gpu storage capacity resolution price;

while (1)  % if an option has only 1 value, the program will automatically skip to next option
    switch (step)
        % initialize data, add category values to popupmenu
        case 0
            set(handles.popupmenu1,'value',1);
            [category,pos] = unique({array.category});
            [~,posSort] = sort(pos);
            category = category(posSort);
            str = '-----Choose a category-----';
            for i = 1:length(category)
                str = char(str,category{i});
            end
            set(handles.popupmenu1,'string',str);
            step = step + 1;
            break;

        % filter category, add brand values to popupmenu
        case 1
            choiceCategory = get(handles.popupmenu1,'value');
            set(handles.popupmenu1,'value',1);
            if (choiceCategory == 1)
                break;
            end
            [~,categoryPos] = find(strcmp({array.category},category{choiceCategory-1})==1);
            category_filter = array(categoryPos);
            brand = unique({category_filter.brand});
            step = step + 1;
            if (length(brand) > 1)
               str = '------Choose a brand------';
                for i = 1:length(brand)
                    str = char(str,brand{i});
                end
                set(handles.popupmenu1,'string',str);            
                break;
            end

        % filter brand, add cpu values to popupmenu
        case 2
            if (length(brand) > 1)
                choiceBrand = get(handles.popupmenu1,'value');
                set(handles.popupmenu1,'value',1);
                if (choiceBrand ==  1)
                    break;
                end
            else
                choiceBrand = 2;
            end
            [~,brandPos] = find(strcmp({category_filter.brand},brand{choiceBrand-1})==1);
            brand_filter = category_filter(brandPos);
            cpu = unique({brand_filter.cpu});
            step = step + 1;
            if (length(cpu) > 1)
               str = '---Choose a CPU type---';
                for i = 1:length(cpu)
                    str = char(str,cpu{i});
                end
                set(handles.popupmenu1,'string',str);
                break;
            end

        % filter cpu, add screensize values to popupmenu
        case 3
            if (length(cpu) > 1)
                choiceCpu = get(handles.popupmenu1,'value');
                set(handles.popupmenu1,'value',1);
                if (choiceCpu == 1)
                    break;
                end
            else
                choiceCpu = 2;
            end
            [~,cpuPos] = find(strcmp({brand_filter.cpu},cpu{choiceCpu-1})==1);
            cpu_filter = brand_filter(cpuPos);
            screensize = unique({cpu_filter.screensize});
            step = step + 1;
            if (length(screensize) > 1)
                str = '----Choose screensize----';
                for i = 1:length(screensize)
                    str = char(str,screensize{i});
                end
                set(handles.popupmenu1,'string',str);
                break;
            end

        % filter screensize, add ram values to popupmenu
        case 4
            if (length(screensize) > 1)
                choiceSize = get(handles.popupmenu1,'value');
                set(handles.popupmenu1,'value',1);
                if (choiceSize == 1)
                    break;
                end
            else
                choiceSize = 2;
            end
            [~,screensizePos] = find(strcmp({cpu_filter.screensize},screensize{choiceSize-1}) == 1);
            screensize_filter = cpu_filter(screensizePos);
            ram = unique({screensize_filter.ram});
            step = step + 1;
            if (length(ram) > 1)
                str = '----Choose RAM capacity----';
                for i = 1:length(ram)
                    str = char(str,ram{i});
                end
                set(handles.popupmenu1,'string',str);
                break;
            end

        % filter ram, add gpu values to popupmenu
        case 5
            if (length(ram) > 1)            
                choiceRam = get(handles.popupmenu1,'value');
                set(handles.popupmenu1,'value',1);
                if (choiceRam == 1)
                    break;
                end
            else
                choiceRam = 2;
            end
            [~,ramPos] = find(strcmp({screensize_filter.ram},ram{choiceRam-1}) == 1);
            ram_filter = screensize_filter(ramPos);
            gpu = unique({ram_filter.gpu});
            step = step + 1;
            if (length(gpu) > 1)
                str = '-----Discrete graphics-----';
                for i = 1:length(gpu)
                    str = char(str,gpu{i});
                end
                set(handles.popupmenu1,'string',str);
                break;
            end

        % filter gpu, add storage values to popupmenu
        case 6
            if (length(gpu) > 1)
                choiceGpu = get(handles.popupmenu1,'value');
                set(handles.popupmenu1,'value',1);
                if (choiceGpu == 1)
                    break;
                end
            else
                choiceGpu = 2;
            end
            [~,gpuPos] = find(strcmp({ram_filter.gpu},gpu{choiceGpu-1}) == 1);
            gpu_filter = ram_filter(gpuPos);
            storage = unique({gpu_filter.storage});
            step = step + 1;
            if (length(storage) > 1)
               str = '-----Storage type-----';
                for i = 1:length(storage)
                    str = char(str,storage{i});
                end
                set(handles.popupmenu1,'string',str);
            end

        % filter storage, add storage capacity values to popupmenu
        case 7
            if (length(storage) > 1)
                choiceStorage = get(handles.popupmenu1,'value');
                set(handles.popupmenu1,'value',1);
                if (choiceStorage == 1)
                    break;
                end
            else
                choiceStorage = 2;
            end
            [~,storagePos] = find(strcmp({gpu_filter.storage},storage{choiceStorage-1}) == 1);
            storage_filter = gpu_filter(storagePos);
            capacity = unique({storage_filter.capacity});
            step = step + 1;
            if (length(capacity) > 1)
               str = '----Storage capacity----';
                for i = 1:length(capacity)
                    str = char(str,capacity{i});
                end
                set(handles.popupmenu1,'string',str);
                break;
            end

        % filter storage capacity, add resolution values to popupmenu
        case 8
            if (length(capacity) > 1)
            choiceCapacity = get(handles.popupmenu1,'value');
            set(handles.popupmenu1,'value',1);
            if (choiceCapacity == 1)
                break;
            end
            else
                choiceCapacity = 2;
            end
            [~,capacityPos] = find(strcmp({storage_filter.capacity},capacity{choiceCapacity-1}) == 1);
            capacity_filter = storage_filter(capacityPos);
            resolution = unique({capacity_filter.resolution});
            step = step + 1;
            if (length(resolution) > 1)
                str = '----Screen resolution----';
                for i = 1:length(resolution)
                    str = char(str,resolution{i});
                end
                set(handles.popupmenu1,'string',str);
                break;
            end

        % filter resolution, if there are still multiple items remaining, add their names and prices to popupmenu
        case 9
            if (length(resolution) > 1)
                choiceResolution = get(handles.popupmenu1,'value');
                set(handles.popupmenu1,'value',1);
                if (choiceResolution == 1)
                    break;
                end
            else
                choiceResolution = 2;
            end
            [~,resolutionPos] = find(strcmp({capacity_filter.resolution},resolution{choiceResolution-1}) == 1);
            resolution_filter = capacity_filter(resolutionPos);
            model = unique({resolution_filter.name});
            price = unique({resolution_filter.price});
            step = step + 1;
            if (length(price) > 1)
                str = '--Which do you prefer?--';
                for i = 1:length(price)
                    str = char(str,[model{i} '  -   ' price{i}]);
                end
                set(handles.popupmenu1,'string',str);
                break;
            end

        % fittest item choosen by user!!
        case 10
            if (length(price) > 1)
                choicePrice = get(handles.popupmenu1,'value');
                if (choicePrice == 1)
                    break;
                end
            else
                choicePrice = 2;
            end
            [~,pricePos] = find(strcmp({resolution_filter.price},price{choicePrice-1}) == 1);
            price_filter = resolution_filter(pricePos);
            set(handles.nextbutton,'enable','off');
            set(handles.popupmenu1,'string','----Found your laptop----','value',1,'enable','off');
            result = char('  Your result here:','',...
                ['* Name: ' price_filter.name],...
                ['* Manufacturer: ' price_filter.brand],...
                ['* CPU: ' price_filter.cpuname],...
                ['* Graphics: ' price_filter.gpuname],...
                ['* Memory: ' price_filter.ram],...
                ['* Storage: ' price_filter.capacity],...
                ['* Storage type: ' price_filter.storage],...
                ['* Screen size: ' price_filter.screensize],...
                ['* Screen resolution: ' price_filter.resolution],...
                '',...
                [' Price: ' price_filter.price]);
            set(handles.resulttxt,'enable','on','string',result);
            set(handles.preview,'visible','off');
            axes(handles.image);
            imshow(price_filter.img);
            break;
    end
end
