FROM python:3

# Prevents Python from writing pyc files to disc
ENV PYTHONUNBUFFERED=1

# Sets the working directory in the container
WORKDIR /app

# Copies the requirements file to the working directory
COPY requirements.txt /app/

# Installs the dependencies from the requirements file
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

# Copies the rest of the application code to the working directory
COPY . /app/
