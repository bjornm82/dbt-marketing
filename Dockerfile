ARG VERSION=
FROM ghcr.io/dbt-labs/dbt-core:$VERSION

RUN apt-get update
RUN apt-get install unixodbc-dev -y \
    python3-dev -y \
    curl -y \
    gcc libsasl2-dev libsasl2-modules -y

RUN pip install dbt-snowflake

RUN dbt --version

WORKDIR /usr/app/my_project