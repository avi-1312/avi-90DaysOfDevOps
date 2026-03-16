# Day 07 – Docker Python Application

This project demonstrates how to containerize a simple Python web server using Docker.

## Steps

1. Create a Python app
2. Write a Dockerfile
3. Build the Docker image
4. Run the container

## Build Image

docker build -t python-web-app .

## Run Container

docker run -p 8000:8000 python-web-app

## Test

curl localhost:8000
