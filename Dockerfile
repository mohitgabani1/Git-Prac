FROM python:3.12
# Set the working directory
WORKDIR /app
# /app/requirement.txt - look in image
COPY requirement.txt .
RUN pip install -r requirement.txt
COPY . ./
CMD ["python", "app.py"]
