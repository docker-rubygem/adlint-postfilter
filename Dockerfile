FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=0.9.2

RUN gem install adlint-postfilter --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["adlint_flt"]
CMD ["--help"]
