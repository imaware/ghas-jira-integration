FROM python:3.10-buster
RUN pip3 install pipenv
COPY entrypoint.sh /entrypoint.sh
COPY *.py gh2jira Pipfile /
RUN cd / && PIPENV_VENV_IN_PROJECT=1 pipenv install
ENTRYPOINT ["/entrypoint.sh"]
