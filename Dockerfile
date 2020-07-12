FROM python:3

WORKDIR /app

COPY requirements.txt /app

RUN pip install streamlit
RUN pip install pandas
RUN pip install scikit-learn

COPY . /app
EXPOSE 8501

CMD streamlit run iris-ml-app.py