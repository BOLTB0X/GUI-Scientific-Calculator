function varargout = main_project(varargin)
% main_project MATLAB code for main_project.fig
%      main_project, by itself, creates a new main_project or raises the existing
%      singleton*.
%
%      H = main_project returns the handle to a new main_project or the handle to
%      the existing singleton*.
%
%      main_project('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in main_project.M with the given input arguments.
%
%      main_project('Property','Value',...) creates a new main_project or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before main_project_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to main_project_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help main_project

% Last Modified by GUIDE v2.5 05-Jun-2018 15:41:09

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @main_project_OpeningFcn, ...
                   'gui_OutputFcn',  @main_project_OutputFcn, ...
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


% --- Executes just before main_project is made visible.
function main_project_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to main_project (see VARARGIN)

% Choose default command line output for main_project
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);
str = 'sejong.PNG';
imdata = imread(str);
axes(handles.logo);
imshow(imdata)

% UIWAIT makes main_project wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = main_project_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;

function editAns2_Callback(hObject, eventdata, handles)
% hObject    handle to editAns2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editAns2 as text
%        str2double(get(hObject,'String')) returns contents of editAns2 as a double


% --- Executes during object creation, after setting all properties.
function editAns2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editAns2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end




% --- Executes on button press in btnEx.
function btnEx_Callback(hObject, eventdata, handles)
% hObject    handle to btnEx (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
str = get(handles.editAns2,'string');
set(handles.editAns2,'string',[str '^2']);
guidata(hObject,handles);


% --- Executes on button press in btnExpo.
function btnExpo_Callback(hObject, eventdata, handles)
% hObject    handle to btnExpo (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
str = get(handles.editAns2,'string');
set(handles.editAns2,'string',[str '^']);
guidata(hObject,handles);


% --- Executes on button press in btnsqrt.
function btnsqrt_Callback(hObject, eventdata, handles)
% hObject    handle to btnsqrt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
str = get(handles.editAns2,'string');
set(handles.editAns2,'string',[str 'sqrt(']);
guidata(hObject,handles);


% --- Executes on button press in btnnthroot.
function btnnthroot_Callback(hObject, eventdata, handles)
% hObject    handle to btnnthroot (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
str = get(handles.editAns2,'string');
set(handles.editAns2,'string',['nthroot(',str,',']);
guidata(hObject,handles);


% --- Executes on button press in btnlog.
function btnlog_Callback(hObject, eventdata, handles)
% hObject    handle to btnlog (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
str = get(handles.editAns2,'string');
set(handles.editAns2,'string',[str 'log10(']);
guidata(hObject,handles);


% --- Executes on button press in btnln.
function btnln_Callback(hObject, eventdata, handles)
% hObject    handle to btnln (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
str = get(handles.editAns2,'string');
set(handles.editAns2,'string',[str 'log(']);
guidata(hObject,handles);


% --- Executes on button press in btnexp.
function btnexp_Callback(hObject, eventdata, handles)
% hObject    handle to btnexp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
str = get(handles.editAns2,'string');
set(handles.editAns2,'string',[str 'exp(']);
guidata(hObject,handles);



% --- Executes on button press in btnfac.
function btnfac_Callback(hObject, eventdata, handles)
% hObject    handle to btnfac (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
str = get(handles.editAns2,'string');
set(handles.editAns2,'string',[str 'factorial(']);
guidata(hObject,handles);


% --- Executes on button press in btnsin.
function btnsin_Callback(hObject, eventdata, handles)
% hObject    handle to btnsin (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
str = get(handles.editAns2,'string');
set(handles.editAns2,'string',[str 'sind(']);
guidata(hObject,handles);



% --- Executes on button press in btncos.
function btncos_Callback(hObject, eventdata, handles)
% hObject    handle to btncos (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
str = get(handles.editAns2,'string');
set(handles.editAns2,'string',[str 'cosd(']);
guidata(hObject,handles);


% --- Executes on button press in btntan.
function btntan_Callback(hObject, eventdata, handles)
% hObject    handle to btntan (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
str = get(handles.editAns2,'string');
set(handles.editAns2,'string',[str 'tand(']);
guidata(hObject,handles);


% --- Executes on button press in btnarcsin.
function btnarcsin_Callback(hObject, eventdata, handles)
% hObject    handle to btnarcsin (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
str = get(handles.editAns2,'string');
set(handles.editAns2,'string',[str 'asind(']);
guidata(hObject,handles);


% --- Executes on button press in btnarccos.
function btnarccos_Callback(hObject, eventdata, handles)
% hObject    handle to btnarccos (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
str = get(handles.editAns2,'string');
set(handles.editAns2,'string',[str 'acosd(']);
guidata(hObject,handles);


% --- Executes on button press in btnarctan.
function btnarctan_Callback(hObject, eventdata, handles)
% hObject    handle to btnarctan (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
str = get(handles.editAns2,'string');
set(handles.editAns2,'string',[str 'atand(']);
guidata(hObject,handles);


% --- Executes on button press in btnfer1.
function btnfer1_Callback(hObject, eventdata, handles)
% hObject    handle to btnfer1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
str = get(handles.editAns2,'string');
set(handles.editAns2,'string',[str '(']);
guidata(hObject,handles);


% --- Executes on button press in btnfer2.
function btnfer2_Callback(hObject, eventdata, handles)
% hObject    handle to btnfer2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
str = get(handles.editAns2,'string');
set(handles.editAns2,'string',[str ')']);
guidata(hObject,handles);


% --- Executes on button press in btn2_7.
function btn2_7_Callback(hObject, eventdata, handles)
% hObject    handle to btn2_7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
str = get(handles.editAns2,'string');
set(handles.editAns2,'string',[str '7']);
guidata(hObject,handles);


% --- Executes on button press in btn2_8.
function btn2_8_Callback(hObject, eventdata, handles)
% hObject    handle to btn2_8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
str = get(handles.editAns2,'string');
set(handles.editAns2,'string',[str '8']);
guidata(hObject,handles);


% --- Executes on button press in btn2_9.
function btn2_9_Callback(hObject, eventdata, handles)
% hObject    handle to btn2_9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
str = get(handles.editAns2,'string');
set(handles.editAns2,'string',[str '9']);
guidata(hObject,handles);


% --- Executes on button press in btn2_4.
function btn2_4_Callback(hObject, eventdata, handles)
% hObject    handle to btn2_4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
str = get(handles.editAns2,'string');
set(handles.editAns2,'string',[str '4']);
guidata(hObject,handles);


% --- Executes on button press in btn2_5.
function btn2_5_Callback(hObject, eventdata, handles)
% hObject    handle to btn2_5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
str = get(handles.editAns2,'string');
set(handles.editAns2,'string',[str '5']);
guidata(hObject,handles);


% --- Executes on button press in btn2_6.
function btn2_6_Callback(hObject, eventdata, handles)
% hObject    handle to btn2_6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
str = get(handles.editAns2,'string');
set(handles.editAns2,'string',[str '6']);
guidata(hObject,handles);


% --- Executes on button press in btn2_1.
function btn2_1_Callback(hObject, eventdata, handles)
% hObject    handle to btn2_1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
str = get(handles.editAns2,'string');
set(handles.editAns2,'string',[str '1']);
guidata(hObject,handles);


% --- Executes on button press in btn2_2.
function btn2_2_Callback(hObject, eventdata, handles)
% hObject    handle to btn2_2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
str = get(handles.editAns2,'string');
set(handles.editAns2,'string',[str '2']);
guidata(hObject,handles);


% --- Executes on button press in btn2_3.
function btn2_3_Callback(hObject, eventdata, handles)
% hObject    handle to btn2_3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
str = get(handles.editAns2,'string');
set(handles.editAns2,'string',[str '3']);
guidata(hObject,handles);


% --- Executes on button press in btn2_0.
function btn2_0_Callback(hObject, eventdata, handles)
% hObject    handle to btn2_0 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
str = get(handles.editAns2,'string');
set(handles.editAns2,'string',[str '0']);
guidata(hObject,handles);


% --- Executes on button press in btn2_Dot.
function btn2_Dot_Callback(hObject, eventdata, handles)
% hObject    handle to btn2_Dot (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
str = get(handles.editAns2,'string');
set(handles.editAns2,'string',[str '.']);
guidata(hObject,handles);


% --- Executes on button press in btn2_Ti.
function btn2_Ti_Callback(hObject, eventdata, handles)
% hObject    handle to btn2_Ti (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
str = get(handles.editAns2,'string');
set(handles.editAns2,'string',[str '3.14']);
guidata(hObject,handles);


% --- Executes on button press in btn2_CE.
function btn2_CE_Callback(hObject, eventdata, handles)
% hObject    handle to btn2_CE (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.editAns2,'string',[]);


% --- Executes on button press in btn2_Mul.
function btn2_Mul_Callback(hObject, eventdata, handles)
% hObject    handle to btn2_Mul (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
str = get(handles.editAns2,'string');
set(handles.editAns2,'string',[str '*']);
guidata(hObject,handles);


% --- Executes on button press in btn2_Div.
function btn2_Div_Callback(hObject, eventdata, handles)
% hObject    handle to btn2_Div (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
str = get(handles.editAns2,'string');
set(handles.editAns2,'string',[str '/']);
guidata(hObject,handles);


% --- Executes on button press in btn2_Plus.
function btn2_Plus_Callback(hObject, eventdata, handles)
% hObject    handle to btn2_Plus (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
str = get(handles.editAns2,'string');
set(handles.editAns2,'string',[str '+']);
guidata(hObject,handles);


% --- Executes on button press in btn2_Minus.
function btn2_Minus_Callback(hObject, eventdata, handles)
% hObject    handle to btn2_Minus (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
str = get(handles.editAns2,'string');
set(handles.editAns2,'string',[str '-']);
guidata(hObject,handles);


% --- Executes on button press in btn2_Done.
function btn2_Done_Callback(hObject, eventdata, handles)
% hObject    handle to btn2_Done (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
str = get(handles.editAns2,'string');
set(handles.editAns2,'string',eval(str));
guidata(hObject,handles);



function editAns_Callback(hObject, eventdata, handles)
% hObject    handle to editAns (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editAns as text
%        str2double(get(hObject,'String')) returns contents of editAns as a double


% --- Executes during object creation, after setting all properties.
function editAns_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editAns (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in btn7.
function btn7_Callback(hObject, eventdata, handles)
% hObject    handle to btn7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
str = get(handles.editAns,'string');
set(handles.editAns,'string',[str '7']);
guidata(hObject,handles);

% --- Executes on button press in btn8.
function btn8_Callback(hObject, eventdata, handles)
% hObject    handle to btn8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
str = get(handles.editAns,'string');
set(handles.editAns,'string',[str '8']);
guidata(hObject,handles);

% --- Executes on button press in btn9.
function btn9_Callback(hObject, eventdata, handles)
% hObject    handle to btn9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
str = get(handles.editAns,'string');
set(handles.editAns,'string',[str '9']);
guidata(hObject,handles);

% --- Executes on button press in btn4.
function btn4_Callback(hObject, eventdata, handles)
% hObject    handle to btn4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
str = get(handles.editAns,'string');
set(handles.editAns,'string',[str '4']);
guidata(hObject,handles);

% --- Executes on button press in btn5.
function btn5_Callback(hObject, eventdata, handles)
% hObject    handle to btn5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
str = get(handles.editAns,'string');
set(handles.editAns,'string',[str '5']);
guidata(hObject,handles);

% --- Executes on button press in btn6.
function btn6_Callback(hObject, eventdata, handles)
% hObject    handle to btn6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
str = get(handles.editAns,'string');
set(handles.editAns,'string',[str '6']);
guidata(hObject,handles);

% --- Executes on button press in btn1.
function btn1_Callback(hObject, eventdata, handles)
% hObject    handle to btn1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
str = get(handles.editAns,'string');
set(handles.editAns,'string',[str '1']);
guidata(hObject,handles);

% --- Executes on button press in btn2.
function btn2_Callback(hObject, eventdata, handles)
% hObject    handle to btn2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
str = get(handles.editAns,'string');
set(handles.editAns,'string',[str '2']);
guidata(hObject,handles);

% --- Executes on button press in btn3.
function btn3_Callback(hObject, eventdata, handles)
% hObject    handle to btn3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
str = get(handles.editAns,'string');
set(handles.editAns,'string',[str '3']);
guidata(hObject,handles);

% --- Executes on button press in btn0.
function btn0_Callback(hObject, eventdata, handles)
% hObject    handle to btn0 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
str = get(handles.editAns,'string');
set(handles.editAns,'string',[str '0']);
guidata(hObject,handles);


% --- Executes on button press in btnDot.
function btnDot_Callback(hObject, eventdata, handles)
% hObject    handle to btnDot (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
str = get(handles.editAns,'string');
set(handles.editAns,'string',[str '.']);
guidata(hObject,handles);


% --- Executes on button press in btnTi.
function btnTi_Callback(hObject, eventdata, handles)
% hObject    handle to btnTi (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
str = get(handles.editAns,'string');
set(handles.editAns,'string',[str 'pi']);
guidata(hObject,handles);


% --- Executes on button press in btnCE.
function btnCE_Callback(hObject, eventdata, handles)
% hObject    handle to btnCE (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.editAns,'string',[]);




% --- Executes on button press in btnMul.
function btnMul_Callback(hObject, eventdata, handles)
% hObject    handle to btnMul (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
str = get(handles.editAns,'string');
set(handles.editAns,'string',[str '*']);
guidata(hObject,handles);


% --- Executes on button press in btnDiv.
function btnDiv_Callback(hObject, eventdata, handles)
% hObject    handle to btnDiv (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
str = get(handles.editAns,'string');
set(handles.editAns,'string',[str '/']);
guidata(hObject,handles);


% --- Executes on button press in btnPlus.
function btnPlus_Callback(hObject, eventdata, handles)
% hObject    handle to btnPlus (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
str = get(handles.editAns,'string');
set(handles.editAns,'string',[str '+']);
guidata(hObject,handles);


% --- Executes on button press in btnMinus.
function btnMinus_Callback(hObject, eventdata, handles)
% hObject    handle to btnMinus (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
str = get(handles.editAns,'string');
set(handles.editAns,'string',[str '-']);
guidata(hObject,handles);


% --- Executes on button press in btnDone.
function btnDone_Callback(hObject, eventdata, handles)
% hObject    handle to btnDone (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
str = get(handles.editAns,'string');
set(handles.editAns,'string',eval(str));
guidata(hObject,handles);



% --- Executes during object creation, after setting all properties.
function btn2_9_CreateFcn(hObject, eventdata, handles)
% hObject    handle to btn2_9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes on key press with focus on btn2_Mul and none of its controls.
function btn2_Mul_KeyPressFcn(hObject, eventdata, handles)
% hObject    handle to btn2_Mul (see GCBO)
% eventdata  structure with the following fields (see MATLAB.UI.CONTROL.UICONTROL)
%	Key: name of the key that was pressed, in lower case
%	Character: character interpretation of the key(s) that was pressed
%	Modifier: name(s) of the modifier key(s) (i.e., control, shift) pressed
% handles    structure with handles and user data (see GUIDATA)


% --- Executes during object creation, after setting all properties.
function panel1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to panel1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes on button press in pushbutton89.
function pushbutton89_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton89 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
exit


% --- Executes on button press in pushbutton90.
function pushbutton90_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton90 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close


% --- Executes on selection change in popupmenu6.
function popupmenu6_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu6 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu6
contents = cellstr(get(handles.popupmenu6,'String'));
temp1 = contents{get(handles.popupmenu6,'Value')};
if strcmp(temp1,'Basic Calculator')
    set(handles.panel1,'visible','on');
    set(handles.panel2,'visible','off');;
 elseif strcmp(temp1,'Scientific Calculator')
     set(handles.panel2,'visible','on');
     set(handles.panel1,'visible','off')
 else
    set(handles.panel1,'visible','off');
    set(handles.panel2,'visible','off');
end



% --- Executes during object creation, after setting all properties.
function popupmenu6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu7.
function popupmenu7_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu7 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu7
contents = cellstr(get(handles.popupmenu7,'String'));
 temp1 = contents{get(handles.popupmenu7,'Value')};
 if strcmp(temp1,'Solving Equations')
 equationpanel_project  
 elseif strcmp(temp1,'Plot')
 plot_project
 elseif strcmp(temp1,'Basic Math')
 basicmath_project
end




% --- Executes during object creation, after setting all properties.
function popupmenu7_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes during object creation, after setting all properties.
function btn7_CreateFcn(hObject, eventdata, handles)
% hObject    handle to btn7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes during object creation, after setting all properties.
function btn8_CreateFcn(hObject, eventdata, handles)
% hObject    handle to btn8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes during object creation, after setting all properties.
function btn9_CreateFcn(hObject, eventdata, handles)
% hObject    handle to btn9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes during object creation, after setting all properties.
function btn4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to btn4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes during object creation, after setting all properties.
function btn5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to btn5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes during object creation, after setting all properties.
function btn6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to btn6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes during object creation, after setting all properties.
function btn1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to btn1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes during object creation, after setting all properties.
function btn2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to btn2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes during object creation, after setting all properties.
function btn3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to btn3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes during object creation, after setting all properties.
function btn0_CreateFcn(hObject, eventdata, handles)
% hObject    handle to btn0 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes during object creation, after setting all properties.
function btnDot_CreateFcn(hObject, eventdata, handles)
% hObject    handle to btnDot (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes during object creation, after setting all properties.
function btnTi_CreateFcn(hObject, eventdata, handles)
% hObject    handle to btnTi (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes during object creation, after setting all properties.
function logo_CreateFcn(hObject, eventdata, handles)
% hObject    handle to logo (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: place code in OpeningFcn to populate logo
