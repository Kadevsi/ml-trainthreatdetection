# Use the official Python slim image from the Docker Hub
FROM python:slim

# Create a directory named 'src' and set it as the working directory
WORKDIR /src

# Copy the contents of the current directory to /src
COPY . /src

# Install Jupyter
RUN pip install jupyter

# Expose port 7890 to allow connections from outside
EXPOSE 7890

# Run Jupyter Notebook, binding to 0.0.0.0 and using port 7890
CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--port=7890", "--no-browser", "--allow-root"]
