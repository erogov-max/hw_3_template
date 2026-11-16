## Шаблон для третьего ДЗ по ИПР

Условие дз доступно по [ссылке](https://github.com/Nikfilk2030/missing_semester_hse_cs/blob/main/2026/amcs/year_1/hw_3/README.md)


# 4
## Команды для запуска
```bash
docker build -t <image_name> .
docker run -d -p 8080:8000 -e GREETING="Привет из Docker" --name <app_name> <image_name>
curl http://localhost:8080/
curl -X POST http://localhost:8080/increment
curl http://localhost:8080/readyz
docker logs <app_name>
docker stop <app_name>
docker rm <app_name>
```

# 6
## Команды
(не просили но пусть будут)
```bash
docker compose up -d
docker compose down
docker compose down -v
docker compose logs -f app
docker compose ps
docker compose stop
docker compose start
```
## Проверка
```bash
docker compose up -d
curl -X POST http://localhost:8080/increment
curl -X POST http://localhost:8080/increment
curl http://localhost:8080/
docker compose logs -f app
docker compose down
docker compose up -d
curl http://localhost:8080/  # count должно быть 2
docker compose logs -f app
docker compose down
```