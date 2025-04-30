📄 AI Essay Writer Agent EssAI
Turn ideas into full essays with the power of AI.

## Project Description
This project implements an AI Agent that generates essays or research drafts based on user-provided topics.  
It leverages LangChain's `ChatOpenAI` integration to interact with OpenAI models (like `gpt-3.5-turbo`).  
The agent is capable of taking multiple essay prompts and returning well-structured written content for each.

It also demonstrates how to visualize the flow or structure of the agent using simple graph plotting tools.

---

## Setup Instructions

1. **Clone the repository**

    ```bash
    git clone <https://github.com/CIPHER-000/Essay-Writer-Agent.git>
    ```

2. **Install dependencies manually**
    
    ```bash
    pip install -r requirements.txt
    ```

## OR **

2. **(Optional but faster) Use Setup Script for Faster Installation**

    To automate installation and launch:

    - **For Linux/Mac/Git Bash users:**
      ```bash
      bash scripts/setup_and_launch.sh
      ```

    - **For Windows users:**
      - Double-click `scripts/setup_and_launch.bat`
      - Or run manually:
        ```bash
        scripts\setup_and_launch.bat
        ```

3. **Set up your environment variables**

    - Create a `.env` file in the project root directory.
    - Get your OpenAI API KEY ($5) @ <https://platform.openai.com/settings/organization/billing/overview>
    - Add your OpenAI API key:
    
    ```
    OPENAI_API_KEY=your-openai-api-key-here
    ```


---


### **Important**
Make sure you have Python and pip installed first.

---

### Visual of the full flow:

- Manual install if user prefers control.
- Fast install if user prefers automation.
- Both OS types supported cleanly.

---


> "**Note**: If you get 'pip not found' or 'jupyter not found' errors, make sure Python and Jupyter are installed correctly."  


## Usage Examples

You can run the notebook `Essay_Writer.ipynb` directly after setup using the command `jupyter lab Essay_Writer.ipynb`.  
Example workflow:

```python
from langchain_openai import ChatOpenAI
from dotenv import load_dotenv
from pydantic.v1 import BaseModel

# Load environment variables
_ = load_dotenv()

# Instantiate the model
model = ChatOpenAI(model="gpt-3.5-turbo", temperature=0)

# Define essay prompts
essay_topics = ["The Impact of Artificial Intelligence on Education", "Climate Change and Its Global Effects"]

# Create a Queries object
query_input = Queries(queries=essay_topics)

# Send prompts to the model and receive essay drafts
responses = model.invoke(query_input.queries)
print(responses)



## You can also visualize the agent's graph structure using:
from IPython.display import Image

Image(graph.get_graph().draw_png())



## Dependencies
langchain-openai

pydantic<2

python-dotenv

ipython

graphviz

pydot

## All dependencies are listed in requirements.txt


** License **
This project is licensed under the MIT License.
You are free to use, modify, and distribute this code with proper attribution.
