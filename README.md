# RobotFramework_Explorations

# Robot Framework Automation Project

A clean, human-readable, and scalable test automation framework built using **Robot Framework** and **Python**. This repository leverages the keyword-driven testing approach to automate web UI components efficiently.

User Guide: https://robotframework.org/robotframework/latest/RobotFrameworkUserGuide.html

## 🚀 Key Features

* **Keyword-Driven Testing:** Uses human-readable sentences, making test cases accessible to both technical and non-technical stakeholders.
* **Page Object Pattern:** Separates UI Locators (elements) from actual test cases to ensure high maintainability.
* **Built-in Reporting:** Automatically generates highly detailed HTML logs, execution summaries, and failure screenshots.
* **Cross-Browser Testing:** Configured to easily switch and execute tests across Chrome, Firefox, Edge, and Safari.

---

## 🛠️ Prerequisites

Before setting up the project, make sure you have the following installed on your system:

* **Python 3.8 or higher:** [Download Python](https://python.org) *(Ensure you check the box to "Add Python to PATH" during installation).*
* **IDE / Code Editor:** [VS Code](https://visualstudio.com) or [PyCharm](https://jetbrains.com) is highly recommended.
  * *Tip for VS Code users:* Install the **Robot Framework Language Server** extension for syntax highlighting and autocomplete.
* **Git:** For version control management.

---

## ⚙️ Installation & Setup

Follow these step-by-step instructions to get your local development environment running:

### 1. Clone the Repository
Open your terminal or command prompt and run:
```bash
git clone https://github.com
cd your-repo-name
```

### 2. Create and Activate a Virtual Environment (Recommended)
To keep the project dependencies isolated and avoid conflicts with global Python packages, set up a virtual environment:

* **On Windows:**
  ```bash
  python -m venv venv
  .\venv\Scripts\activate
  ```
* **On macOS/Linux:**
  ```bash
  python3 -m venv venv
  source venv/bin/activate
  ```

### 3. Install Dependencies
Ensure your virtual environment is active, then upgrade `pip` and install all required framework dependencies:
```bash
pip install --upgrade pip
pip install -r requirements.txt
```

*(Note: If you do not have a `requirements.txt` yet, the basic libraries can be installed manually via `pip install robotframework robotframework-seleniumlibrary webdriver-manager`)*

---

## 🏃 Running the Tests

You can execute your test suites directly from the command line while your virtual environment is active:

```bash
# Run all tests inside a specific .robot file
robot tests/login_tests.robot

# Run all test suites inside the entire tests folder
robot tests/

# Run tests that match a specific tag (e.g., Smoke tests)
robot --include smoke tests/

# Override variables dynamically from the command line (e.g., Change browser)
robot --variable BROWSER:firefox tests/

# Output execution results to a specific folder (e.g., results/)
robot -d results tests/
```

---

## 📁 Project Structure

```text
├── .gitignore               # Files and folders ignored by Git (e.g., venv/)
├── requirements.txt         # List of required Python packages and libraries
├── README.md                # Project documentation
├── resources/               # Reusable keywords and variables
│   ├── locators/            # UI Elements, XPaths, and CSS Selectors
│   ├── keywords/            # Custom functional actions (e.g., User Login)
│   └── common_config.robot  # Global variables and Setup/Teardown configurations
├── tests/                   # Actual test scripts grouped by features (.robot files)
│   ├── authentication/
│   └── dashboard/
└── results/                 # Automatically generated execution reports (Git-ignored)
```

---

## 📑 Test Reports & Artifacts

After every test run, Robot Framework automatically generates comprehensive execution files inside your root directory (or your specified output folder):

* **`report.html`:** A high-level visual summary showing pass/fail statistics and total execution runtime.
* **`log.html`:** A deep, step-by-step breakdown of every keyword executed. If a test step fails, an automatic **screenshot** is embedded directly into this file for easier debugging.
* **`output.xml`:** The raw data of the test run, perfect for integration with CI/CD tools like Jenkins or GitHub Actions.
