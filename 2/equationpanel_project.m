function varargout = equationpanel_project(varargin)
% EQUATIONPANEL_PROJECT MATLAB code for equationpanel_project.fig
%      EQUATIONPANEL_PROJECT, by itself, creates a new EQUATIONPANEL_PROJECT or raises the existing
%      singleton*.
%
%      H = EQUATIONPANEL_PROJECT returns the handle to a new EQUATIONPANEL_PROJECT or the handle to
%      the existing singleton*.
%
%      EQUATIONPANEL_PROJECT('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in EQUATIONPANEL_PROJECT.M with the given input arguments.
%
%      EQUATIONPANEL_PROJECT('Property','Value',...) creates a new EQUATIONPANEL_PROJECT or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before equationpanel_project_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to equationpanel_project_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help equationpanel_project

% Last Modified by GUIDE v2.5 05-Jun-2018 15:28:25

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @equationpanel_project_OpeningFcn, ...
                   'gui_OutputFcn',  @equationpanel_project_OutputFcn, ...
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


% --- Executes just before equationpanel_project is made visible.
function equationpanel_project_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to equationpanel_project (see VARARGIN)

% Choose default command line output for equationpanel_project
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes equationpanel_project wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = equationpanel_project_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in closebutton.
function closebutton_Callback(hObject, eventdata, handles)
% hObject    handle to closebutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close


% --- Executes on selection change in eqtmenu1.
function eqtmenu1_Callback(hObject, eventdata, handles)
% hObject    handle to eqtmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns eqtmenu1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from eqtmenu1

contents = cellstr(get(handles.eqtmenu1,'String'));
temp1 = contents{get(handles.eqtmenu1,'Value')};
if strcmp(temp1,'Linear Equation')
    set(handles.linear,'visible','on');
    set(handles.polynomial,'visible','off');
elseif strcmp(temp1,'Polynomial Equation')
    set(handles.polynomial,'visible','on');
    set(handles.linear,'visible','off');
else
    set(handles.linear,'visible','off');
    set(handles.polynomial,'visible','off');   
end


% --- Executes during object creation, after setting all properties.
function eqtmenu1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to eqtmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function matrixa_Callback(hObject, eventdata, handles)
% hObject    handle to matrixa (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% Hints: get(hObject,'String') returns contents of matrixa as text
%        str2double(get(hObject,'String')) returns contents of matrixa as a double


% --- Executes during object creation, after setting all properties.
function matrixa_CreateFcn(hObject, eventdata, handles)
% hObject    handle to matrixa (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function columnb_Callback(hObject, eventdata, handles)
% hObject    handle to columnb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of columnb as text
%        str2double(get(hObject,'String')) returns contents of columnb as a double


% --- Executes during object creation, after setting all properties.
function columnb_CreateFcn(hObject, eventdata, handles)
% hObject    handle to columnb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

% --- Executes on button press in resultbutton.
function resultbutton_Callback(hObject, eventdata, handles)
% hObject    handle to resultbutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
A = str2num(get(handles.matrixa,'string'))
col_vec = transpose(str2num(get(handles.columnb,'string')))
X = A\col_vec
% [row, col] = size(A)
% for i= 1:row
%     
% end
% c = num2str(A)
% [row, col] = size(c)
set(handles.resultvalue,'String',X); 
% set(handles.resultvalue,'Number',A);




function resultvalue_Callback(hObject, eventdata, handles)
% hObject    handle to resultvalue (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of resultvalue as text
%        str2double(get(hObject,'String')) returns contents of resultvalue as a double


% --- Executes during object creation, after setting all properties.
function resultvalue_CreateFcn(hObject, eventdata, handles)
% hObject    handle to resultvalue (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function eqt1_Callback(hObject, eventdata, handles)
% hObject    handle to eqt1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of eqt1 as text
%        str2double(get(hObject,'String')) returns contents of eqt1 as a double



% --- Executes during object creation, after setting all properties.
function eqt1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to eqt1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function eqt2_Callback(hObject, eventdata, handles)
% hObject    handle to eqt2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of eqt2 as text
%        str2double(get(hObject,'String')) returns contents of eqt2 as a double



% --- Executes during object creation, after setting all properties.
function eqt2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to eqt2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function valX_Callback(hObject, eventdata, handles)
% hObject    handle to valX (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of valX as text
%        str2double(get(hObject,'String')) returns contents of valX as a double



% --- Executes during object creation, after setting all properties.
function valX_CreateFcn(hObject, eventdata, handles)
% hObject    handle to valX (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in eqtmenu2.
function eqtmenu2_Callback(hObject, eventdata, handles)
% hObject    handle to eqtmenu2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns eqtmenu2 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from eqtmenu2
contents = cellstr(get(hObject, 'String'));
operator = string(contents{get(hObject, 'Value')});

P1 = eval(strcat('[',get(handles.eqt1, 'String'),']'));
P2 = eval(strcat('[',get(handles.eqt2, 'String'),']'));
x_value = str2num(get(handles.valX, 'String'));

if operator == 'Polyval'
    set(handles.eqt1result, 'String', polyval(P1, x_value));
    set(handles.eqt2result, 'String', polyval(P2, x_value));
    
elseif operator == 'Roots'
    set(handles.eqt1result, 'String', roots(P1));
    set(handles.eqt2result, 'String', roots(P2));    
    
elseif operator == 'Addition'
    p1_size = size(P1,2)
    p2_size = size(P2,2)
    
    if p1_size > p2_size
        arr = zeros(1,p1_size);
        arr(1,p1_size-p2_size+1:p1_size) = P2
        P2 = arr
    elseif p2_size > p1_size
        arr = zeros(1,p2_size);
        arr(1,p2_size-p1_size+1:p2_size) = P1
        P1 = arr
    end
    
    
    value = P1+P2;
    
    set(handles.eqt1result, 'String', mat2str(value));
    set(handles.eqt2result, 'String', polyval(value, x_value));
   
elseif operator == 'Subtraction'
    p1_size = size(P1,2)
    p2_size = size(P2,2)
    
    if p1_size > p2_size
        arr = zeros(1,p1_size);
        arr(1,p1_size-p2_size+1:p1_size) = P2
        P2 = arr
    elseif p2_size > p1_size
        arr = zeros(1,p2_size);
        arr(1,p2_size-p1_size+1:p2_size) = P1
        P1 = arr
    end
    set(handles.eqt1result, 'String', mat2str(P1-P2));
    set(handles.eqt2result, 'String', polyval(P1-P2, x_value));
    
elseif operator == 'Multiplication'
    set(handles.eqt1result, 'String', mat2str(conv(P1,P2)));
    set(handles.eqt2result, 'String', polyval(conv(P1,P2), x_value));
    
elseif operator == 'Division'
    [q,r] = deconv(P1,P2)
    re = strcat('C : ', mat2str(q), ' remain : ', mat2str(r));
    set(handles.eqt1result, 'String', re);
    set(handles.eqt2result, 'String', polyval(q,x_value));
    
else
    set(handles.coeff1_input, 'String', '');
    set(handles.coeff2_input, 'String', '');
    set(handles.x_value_input, 'String', '');
    set(handles.text_result1, 'String', '');
    set(handles.text_result2, 'String', '');    

end


% --- Executes during object creation, after setting all properties.
function eqtmenu2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to eqtmenu2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function eqt1result_Callback(hObject, eventdata, handles)
% hObject    handle to eqt1result (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of eqt1result as text
%        str2double(get(hObject,'String')) returns contents of eqt1result as a double


% --- Executes during object creation, after setting all properties.
function eqt1result_CreateFcn(hObject, eventdata, handles)
% hObject    handle to eqt1result (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function eqt2result_Callback(hObject, eventdata, handles)
% hObject    handle to eqt2result (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of eqt2result as text
%        str2double(get(hObject,'String')) returns contents of eqt2result as a double


% --- Executes during object creation, after setting all properties.
function eqt2result_CreateFcn(hObject, eventdata, handles)
% hObject    handle to eqt2result (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes during object creation, after setting all properties.
function linear_CreateFcn(hObject, eventdata, handles)
% hObject    handle to linear (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes during object creation, after setting all properties.
function panel2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to panel2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes during object creation, after setting all properties.
function text3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to text3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes during object creation, after setting all properties.
function text4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to text4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes during object creation, after setting all properties.
function text_matrix_CreateFcn(hObject, eventdata, handles)
% hObject    handle to text_matrix (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes during object creation, after setting all properties.
function text6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to text6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes during object creation, after setting all properties.
function polynomial_CreateFcn(hObject, eventdata, handles)
% hObject    handle to polynomial (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes during object creation, after setting all properties.
function text9_CreateFcn(hObject, eventdata, handles)
% hObject    handle to text9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes during object creation, after setting all properties.
function text10_CreateFcn(hObject, eventdata, handles)
% hObject    handle to text10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes during object creation, after setting all properties.
function text11_CreateFcn(hObject, eventdata, handles)
% hObject    handle to text11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes during object creation, after setting all properties.
function panel4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to panel4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
