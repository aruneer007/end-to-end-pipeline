# base image
FROM python:3.9

RUN apt-get update

# Copy local code to the container image.
ENV APP_HOME /app
WORKDIR $APP_HOME
COPY . ./

RUN ls -la $APP_HOME/

# Install dependencies
RUN pip install -r requirements.txt

# Expose Streamlit's default port
#EXPOSE 8502
# Run Streamlit app on container startup
#CMD ["streamlit", "run", "app.py", "--server.enableCORS", "false", "--server.address", "0.0.0.0", "--server.port", "8502"]
CMD [ "streamlit", "run","--server.enableCORS","false","cvapp.py" ]

