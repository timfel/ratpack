RatPack2.0 [![Build Status](https://travis-ci.org/hpi-swa-teaching/RatPack2.0.svg?branch=develop)](https://travis-ci.org/hpi-swa-teaching/RatPack2.0) [![Coverage Status](https://coveralls.io/repos/github/hpi-swa-teaching/RatPack2.0/badge.svg?branch=master)](https://coveralls.io/github/hpi-swa-teaching/RatPack2.0?branch=develop)
========================
RatPack is a simplistic implementation of the Sinatra concept on top
of KomHttpServer for Squeak/Smalltalk.

For licensing, see the file COPYRIGHT

Setup Postgres
-----

```bash
# commands tested on ubuntu 16.04
sudo su - postgres # access postgres user
createdb squeakdb  # create database needed by ratpack tests
psql -s squeakdb   # enter SQL prompt
alter user postgres with password 'bird';
```
