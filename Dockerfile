FROM python:3.8.19-alpine

WORKDIR /usr/src/app

COPY ./techtrends/requirements.txt .
RUN pip install -r requirements.txt

COPY ./techtrends .
RUN python init_db.py

EXPOSE 3111

CMD [ "python", "app.py" ]