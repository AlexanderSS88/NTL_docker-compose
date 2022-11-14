FROM python:3.10-alpine

RUN pip install --upgrade pip

COPY ./requirements.txt .

ENV PYTHONDONTWRITEBYTECODE=1 \
    PYTHONBUFFERED=1

RUN pip install --no-cache-dir --upgrade -r requirements.txt

COPY . .

COPY ./entrypoint.sh .

ENTRYPOINT ["sh", "/entrypoint.sh"]






