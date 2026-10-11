#!/bin/bash

# Helper script for Docker Compose operations

case "$1" in
  "up")
    echo "Starting all services..."
    docker-compose up -d
    ;;
  "down")
    echo "Stopping all services..."
    docker-compose down
    ;;
  "logs")
    echo "Showing logs..."
    docker-compose logs -f
    ;;
  "build")
    echo "Building services..."
    docker-compose build
    ;;
  "ps")
    echo "Listing services..."
    docker-compose ps
    ;;
  *)
    echo "Usage: $0 {up|down|logs|build|ps}"
    echo "  up    - Start all services in detached mode"
    echo "  down  - Stop all services"
    echo "  logs  - Show and follow logs"
    echo "  build - Build services"
    echo "  ps    - List running services"
    ;;
esac