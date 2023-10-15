ARG BASE_IMAGE
FROM ${BASE_IMAGE} AS autogpt-base
ARG BUILD_TYPE
# Set environment variables
ENV PIP_NO_CACHE_DIR=yes \
    PYTHONUNBUFFERED=1 \
    PYTHONDONTWRITEBYTECODE=1 \
    POETRY_HOME="/opt/poetry" \
    POETRY_VIRTUALENVS_IN_PROJECT=0 \
    POETRY_NO_INTERACTION=1

# Install and configure Poetry
RUN curl -sSL https://install.python-poetry.org | python3 -
ENV PATH="$POETRY_HOME/bin:$PATH"
RUN poetry config installer.max-workers 10

WORKDIR /app
COPY pyproject.toml poetry.lock ./

# Set the entrypoint
ENTRYPOINT ["poetry"]
CMD ["run", "autogpt", "--install-plugin-deps"]

# dev build -> include everything
FROM autogpt-base as autogpt-dev
#RUN poetry lock
RUN poetry install --no-root
ONBUILD COPY . ./

# release build -> include bare minimum
FROM autogpt-base as autogpt-release
RUN poetry install --no-root --without dev,benchmark
ONBUILD COPY autogpt/ ./autogpt
ONBUILD COPY scripts/ ./scripts
ONBUILD COPY plugins/ ./plugins
ONBUILD COPY prompt_settings.yaml ./prompt_settings.yaml
ONBUILD COPY README.md ./README.md
ONBUILD RUN mkdir ./data

FROM autogpt-dev AS autogpt
RUN poetry install --only-root