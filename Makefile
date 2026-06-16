.PHONY: help start stop restart logs backup migrate seed clean

help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | \
	awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-15s\033[0m %s\n", $$1, $$2}'

start: ## تشغيل جميع الخدمات
	docker-compose up -d

stop: ## إيقاف جميع الخدمات
	docker-compose down

restart: ## إعادة تشغيل
	docker-compose restart

logs: ## عرض السجلات
	docker-compose logs -f --tail=100

migrate: ## ترحيل قاعدة البيانات
	docker-compose exec backend python manage.py migrate

seed: ## تحميل بيانات تجريبية
	docker-compose exec backend python manage.py seed_data

shell: ## فتح Django shell
	docker-compose exec backend python manage.py shell

backup: ## نسخ احتياطي
	docker-compose exec postgres pg_dump -U basma_user basma_db > backup.sql

clean: ## تنظيف
	docker system prune -f
