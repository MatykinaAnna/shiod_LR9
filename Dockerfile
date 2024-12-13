FROM postgres:latest
ENV POSTGRES_PASSWORD=dbpass
ENV POSTGRES_USER=dbuser
ENV POSTGRES_DB=dbname
COPY sql/LR-9.sql /docker-entrypoint-initdb.d/init.sql
VOLUME /d_data:/var/lib/postgresql/data