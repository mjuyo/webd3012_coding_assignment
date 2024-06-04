# Docker Setup for Coding Assignment

## Overview

This project sets up a development environment using Docker for a simple React application that displays a `<h1>` tag with the text "Codin 1". The application runs on `localhost:7775`.

## Prerequisites

- Docker installed on your machine.
- Node.js and npm installed on your machine.

## Setup Instructions

1. Clone the repository to your local machine:

    ```bash
    git clone https://github.com/mjuyo/webd3012_coding_assignment.git
    ```

2. Navigate to the repository directory:
    
    ```bash
    cd webd3012_coding_assignment
    ```

3. Build the Docker image:

    ```bash
    docker build -t mjuyo:1.0 .
    ```

4. Run the Docker container with the specified name:

    ```bash
    docker run -p 7775:7775 -d --name juyo_marco_coding_assignment11 mjuyo:1.0
    ```

5. Open your browser and go to `http://localhost:7775`. You should see a webpage with the text "Codin 1".

## Project Structure

- `Dockerfile`: Contains the instructions to build the Docker image.
- `package.json`: Lists the project dependencies.
- `src/App.js`: Main React component displaying the "Codin 1" text.
- `README.md`: This file with setup instructions.

# webd3012_coding_assignment
