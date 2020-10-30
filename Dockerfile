FROM python:3.7

RUN pip install pipenv
echo "Set Working Diractory"
WORKDIR /home/app
COPY . .
WORKDIR /home/app/ftp_bot
RUN pipenv update
ENV PYTHONPATH=/home/app
ENV DOCKER_MODE=true
EXPOSE 8000
CMD ["pipenv", "run", "python", "bot.py"]
