FROM python:3.7.3-stretch

WORKDIR /app

COPY . app.py /app/


#hadolint ignore=DL3013
RUN pip install --upgrade --no-cache-dir pip && \
	pip install --no-cache-dir -r requirements.txt


## Step 4:
# Expose port 80
EXPOSE 80

## Step 5:
# Run app.py at container launch
CMD ["python", "app.py"]
