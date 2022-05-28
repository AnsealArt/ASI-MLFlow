FROM condaforge/miniforge3

RUN pip install mlflow \
    && pip install azure-storage-blob==12.3.0 \
    && pip install numpy==1.22.0 \
    && pip install scipy==1.7.3 \
    && pip install pandas==1.3.5 \
    && pip install scikit-learn==1.0.2 \
    && pip install cloudpickle \
    && pip install aniso8601==9.0.1 \
    && pip install click==8.0.3 \
    && pip install cycler==0.11.0 \
    && pip install Flask==2.0.2 \
    && pip install Flask-Cors==3.0.10 \
    && pip install Flask-RESTful==0.3.9 \
    && pip install Flask-WTF==1.0.0 \
    && pip install fonttools==4.28.5 \
    && pip install gunicorn==20.1.0 \
    && pip install itsdangerous==2.0.1 \
    && pip install Jinja2==3.0.3 \
    && pip install joblib==1.1.0 \
    && pip install kiwisolver==1.3.2 \
    && pip install MarkupSafe==2.0.1 \
    && pip install matplotlib==3.5.1 \
    && pip install packaging==21.3 \
    && pip install Pillow==9.0.0 \
    && pip install pyparsing==3.0.6 \
    && pip install python-dateutil==2.8.2 \
    && pip install python-dotenv==0.19.2 \
    && pip install pytz==2021.3 \
    && pip install seaborn==0.11.2 \
    && pip install six==1.16.0 \
    && pip install sklearn==0.0 \
    && pip install threadpoolctl==3.0.0 \
    && pip install Werkzeug==2.0.2 \
    && pip install WTForms==3.0.1 \
    && pip install notebook

RUN apt-get update;

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get install -y make build-essential libssl-dev zlib1g-dev

RUN apt-get install -y libbz2-dev libreadline-dev libsqlite3-dev wget curl llvm

RUN apt-get install -y libncursesw5-dev xz-utils tk-dev libxml2-dev libxmlsec1-dev libffi-dev liblzma-dev

RUN pip install Cmake

RUN apt-get update && apt-get install -y libgomp1

RUN pip install --trusted-host pypi.python.org  pycaret