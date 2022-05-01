FROM python

WORKDIR /fastapi_app

# copy current directory project into WORKDIR
COPY . .

# install all modules from file requirements.txt
RUN pip install --no-cache-dir --upgrade -r requirements.txt

# run uvicorn service
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]

EXPOSE 8000