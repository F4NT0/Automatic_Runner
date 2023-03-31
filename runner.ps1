# Open Notepad
notepad

# Install keyboard
pip3 install keyboard

# Set the path to the Python 3 executable
$pythonPath = (Get-Command python3).Path

# Set the path to the Python file you want to run
$pythonScriptPath = Get-ChildItem -Path . -Recurse -Include pyrunner.py

# Run the Python file using Python 3
& $pythonPath $pythonScriptPath
