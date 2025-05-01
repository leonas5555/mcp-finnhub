FROM python:3.13-slim

WORKDIR /app

COPY server.py ./

# Install required dependencies
RUN pip install --no-cache-dir fastmcp finnhub-python python-dotenv

# Use fastmcp with SSE transport and expose port 8000
ENV HOST=0.0.0.0
ENV PORT=8000
EXPOSE 8000

# Run with SSE transport (not stdio)
ENTRYPOINT ["fastmcp", "run", "server.py:mcp", "-t", "sse", "--host", "0.0.0.0", "--port", "8000"] 