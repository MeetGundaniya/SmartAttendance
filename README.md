
# Smart Attendance

Our primary goal is to help the lecturers, improve and organize the process of track and manage student attendance and absenteeism.


## **Installation**


### **Python**

#### Check python version, make sure python>=3.8,<3.10

```bash
  python --version
```
    
#### Update python packages

```bash
  python -m pip install -U pip
  pip install -U wheel setuptools
```


### **Create virtual environment**

#### It is recommended to use virtualenv
```bash
  virtualenv SA
```


### **Install libraries**

**Note:** before installing libraries make sure below dependency tool installed

1. Download Visual Studio 2022.

2. When installing, make sure to install Desktop Development with C++. It automatically downloads CMake.

3. Once it is complete, clone face_recognition. Simply navigate to a folder of your choice in Command Prompt or Bash and type

```bash
git clone https://github.com/ageitgey/face_recognition.git
Create a new virtual environment for easy differentiation and activate it
```

5. Install CMake using

```bash
pip install cmake
```

6. Navigate back to the folder where the face_recognition was cloned and enter the command.
```bash
python setup.py install
```

Note: It is important that you are in the folder where the face_recognition was cloned as it contains the setup.py file.

Reference: https://stackoverflow.com/a/70063448

7. Now, install other libraries from requirements.txt
```bash
  pip install -r requirements.txt
```


## Deployment

Deploy on Docker

Checkout another branch


## Environment Variables

To run this project, you will need to add the following environment variables to your Environ/Prod.env file

`DEBUG`

`SECRET_KEY`

`ALLOWED_HOSTS`

If Environ/Dev.env file exist then it overwrite Prod.env variables.


## Run Locally

Clone the project

```bash
  git clone https://github.com/MeetGundaniya/SmartAttendance.git
```

Go to the project directory

```bash
  cd SmartAttendance
```

Activate virtualenv

```bash
  # for Windows
  CMD .venv\Scripts\activate

  # for Linux/macOS
  source venv/bin/activate
```

Start the server

```bash
  python manage.py runserver
```


## Features

- Interactive filters and search bar
- Side by side managing many to many relation
- Use Vue.js calendar as attendance bord
- Export attendance to .xml file


## Authors

- [@meetgundaniya](https://www.github.com/MeetGundaniya)