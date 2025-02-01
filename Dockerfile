FROM python-3.12.2-slim

RUN pip install poetry==1.4.2
COPY pyproject.toml pyproject.toml
RUN poetry install
COPY ./app/ ./backend/

CMD ["python", "main.py"]