FROM jupyter/datascience-notebook:x86_64-ubuntu-22.04
MAINTAINER rag-postgres

# To install packages
USER root

# Update packages first
RUN apt-get dist-upgrade -y && \
  apt-get update -y

# Install additional Python packages for RAG with Postgres resources
# NB: Needs to sync with requreiments.txt and bin/conda.yml
RUN pip install --upgrade pip && \
  pip install --no-cache-dir \
    pandas==2.0.1 \
    beautifulsoup4==4.12.2 \
    requests==2.31.0 \
    lxml==4.9.3 \
    tqdm==4.66.1 \
    langchain==0.1.0 \
    openai==1.6.1 \
    tiktoken==0.5.2 \
    transformers==4.36.2 \
    sentence-transformers==2.2.2 \
    faiss-cpu==1.7.4 \
    jq==1.6.0
