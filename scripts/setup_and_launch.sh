#!/bin/bash

# Title
echo "=================================="
echo "   AI Essay Writer Setup Script   "
echo "=================================="

# Step 1: Check if requirements are installed
echo "Checking Python dependencies..."

# If there's no virtual environment, recommend it (optional for now)
if ! command -v pip &> /dev/null
then
    echo "Error: pip is not installed. Please install Python and pip first."
    exit 1
fi

# Check if requirements are already satisfied
if pip check > /dev/null 2>&1
then
    echo "All dependencies are already satisfied."
else
    echo "Installing missing dependencies..."
    pip install -r requirements.txt
fi

# Step 2: Launch the notebook
echo "Launching Jupyter Notebook..."

# Check if jupyter is installed
if ! command -v jupyter &> /dev/null
then
    echo "Jupyter Notebook is not installed. Installing it..."
    pip install notebook
fi

# Launch the specific notebook
jupyter notebook Lesson_6_Student.ipynb

echo "Done!"
