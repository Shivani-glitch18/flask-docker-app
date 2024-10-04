# Use an official Python runtime as the base image
FROM python:latest

# copy the requirements file into the image
COPY ./requirements.txt /app/requirements.txt

# Set the working directory in the container
WORKDIR /app

# install the dependencies and packages in the requirements file
RUN pip install -r requirements.txt

# Copy the current directory contents into the container at /app
COPY . /app

# Install the required dependencies
RUN pip install -r requirements.txt

# Expose port 5000 for Flask app
EXPOSE 5000

# Run the Flask app
CMD ["python", "view.py"]
