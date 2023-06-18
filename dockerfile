FROM mosesdaudu001/zoomcamp-model:mlops-3.10.0-slim

RUN pip install -U pip
RUN pip install pipenv 

# WORKDIR /app

# COPY [ "Pipfile", "Pipfile.lock", "./" ]

# RUN pipenv install --system --deploy

# COPY [ "predict.py", "lin_reg.bin", "./" ]

EXPOSE 9696

ENTRYPOINT [ "gunicorn", "--bind=0.0.0.0:9696", "predict:app" ]

# sudo docker build -t ride .
# sudo docker run -it --rm -p 9696:9696 ride