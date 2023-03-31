# How to run Scripts into powershell

* <kbd>Ctrl</kbd> + <kbd>X</kbd> = Open the configurations
* Select `Windows Powershell (Admin)` = Open the powershell in admin mode
* Run the following code:

```powershell
Set-ExecutionPolicy RemoteSigned
```

## How to create a Script

* The extension from the script need to be `.ps1`
* to run the script into the terminal just need to send the name and extension like:

```powershell
.\runner.ps1   
```

## How this program works

* The python file `pyrunner.py` run a keyboard key a after 3 seconds.

```python
import time
import keyboard

while True:
    time.sleep(3)
    keyboard.press("a")
    keyboard.release("a")
```

* The powershell script to start notepad and run the python script is the follow:

```powershell
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
```

