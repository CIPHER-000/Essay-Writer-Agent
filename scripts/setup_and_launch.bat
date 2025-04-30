@echo off
:: AI Essay Writer - Setup and Launch Script

echo ==================================
echo    AI Essay Writer Setup Script   
echo ==================================

:: Check if pip is installed
where pip >nul 2>nul
if %errorlevel% neq 0 (
    echo Error: pip is not installed. Please install Python and pip first.
    exit /b 1
)

:: Install Python dependencies
pip install -r requirements.txt

:: Check if Jupyter Notebook is installed
where jupyter >nul 2>nul
if %errorlevel% neq 0 (
    echo Jupyter Notebook not found. Installing...
    pip install notebook
)

:: Launch the notebook
echo Launching Jupyter Notebook...
jupyter notebook EssAI.ipynb

echo Setup complete!
pause
