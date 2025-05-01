#!/bin/bash

# Build the mcp-finnhub Docker image
echo "Building mcp-finnhub Docker image..."
docker build -t agentic-trading-fleet-mcp-finnhub:latest .

echo "Build complete. You can now run the container with:"
echo "docker-compose up mcp-finnhub" 