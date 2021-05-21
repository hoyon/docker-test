FROM debian:buster-slim

RUN apt-get clean && apt-get update && apt-get install gnupg2 wget -y

RUN wget -q -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | apt-key add -
RUN echo "deb [arch=amd64] http://apt.postgresql.org/pub/repos/apt/ buster-pgdg main" >> /etc/apt/sources.list.d/pgdg.list

RUN apt-get update && apt-get install locales postgresql-client-11 imagemagick xfonts-75dpi xfonts-base -y

RUN wget -q https://github.com/wkhtmltopdf/wkhtmltopdf/releases/download/0.12.5/wkhtmltox_0.12.5-1.buster_amd64.deb
RUN dpkg -i wkhtmltox_0.12.5-1.buster_amd64.deb
