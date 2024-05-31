FROM public.ecr.aws/docker/library/python:3.9.19-alpine3.20 

WORKDIR /code

COPY ./requirements.txt /code/requirements.txt

RUN pip install --no-cache-dir --upgrade -r requirements.txt

COPY ./streamlit_app.py /code/streamlit_app.py

EXPOSE 80

CMD ["streamlit", "run", "streamlit_app.py", "--server.port", "80"]
