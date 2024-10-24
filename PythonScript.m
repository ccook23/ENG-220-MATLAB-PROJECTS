close all;
clear all;
clc;

%% 1. Configure Python in MATLAB
python_executable = 'C:\Users\Conner\AppData\Local\Programs\Python\Python312\pythonw.exe'; % Replace with the actual path to your Python executable

% Check if Python is already loaded
if isempty(pyenv().Version)
    pyenv('Version', python_executable); % Set the Python version if not already loaded
else
    disp('Python is already loaded in this session');
end

% Verify Python configuration
if count(py.sys.path, '') == 0
    insert(py.sys.path, int32(0), '');
end

%% 2. Calling Python Functions from MATLAB:
mylist = py.list({'apple', 'banana', 'orange'});
len_of_list = py.len(mylist);
fprintf('\nLength of List = %d Entries\n\n', len_of_list);

%% 3. Using Python Libraries in MATLAB:
py_math = py.importlib.import_module('math');
result = py_math.sqrt(25);
fprintf('Square Root of 25 = %d\n\n', result);

%% 4. Running Custom Python Scripts:
pyrunfile("HelloMATLAB.py")