# Dockerfile
FROM python:3.12-slim

# 1. Install Prefect 3.x
RUN pip install --no-cache-dir prefect==3.*

# 2. Expose default Prefect server ports 
#    4200: API,    4201: UI,    4202: Agents/Work queues
EXPOSE 4200 4201 4202

# 3. Start the full Prefect server
CMD ["prefect", "server", "start"]