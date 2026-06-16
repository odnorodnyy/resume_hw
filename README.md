# Резюме Шурыгин Данила Дмитриевич (БКНАД 253)

Домашнее задание в рамках курса ИПР по составлению и сборке резюме.

---

## Сборка резюме

Резюме собирается автоматически через GitHub Actions при каждом пуше

Для локальной сборки через [Docker](https://www.docker.com/):

```bash
docker build --tag cv-builder .
docker run --name cv-container cv-builder
docker cp cv-container:/app/resume_ru.pdf .
docker cp cv-container:/app/resume_eng.pdf .
```

На выходе получаем два файла: `resume_ru.pdf` и `resume_eng.pdf`