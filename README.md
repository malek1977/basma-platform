# منصة بصمة (Basma Platform)

منصة متكاملة للمهام المصغرة وحلول البيانات.

## 🚀 التشغيل السريع

```bash
git clone https://github.com/malek1977/basma-platform.git
cd basma-platform
docker-compose up -d
docker-compose exec backend python manage.py migrate
docker-compose exec backend python manage.py seed_data
basma-platform/
├── backend/          # Django REST Framework
├── frontend/         # React TypeScript  
├── mobile/           # Flutter App
├── docker-compose.yml
├── docker-compose.prod.yml
├── nginx/
├── scripts/
└── docs/
المكون التقنية
Backend Django 4.2 + DRF
Frontend React 18 + TypeScript + MUI
Mobile Flutter 3
Database PostgreSQL 15
Cache Redis 7
Storage MinIO (S3)
Tasks Celery
Deploy Docker + Nginx

### **.env.example**
```bash
cat > .env.example << 'EOF'
# Django
DJANGO_SECRET_KEY=change-this-to-random-string
DJANGO_DEBUG=True
DJANGO_ALLOWED_HOSTS=localhost,127.0.0.1

# Database
POSTGRES_DB=basma_db
POSTGRES_USER=basma_user
POSTGRES_PASSWORD=BasmaDB@2024Secure
POSTGRES_HOST=postgres
POSTGRES_PORT=5432

# Redis
REDIS_URL=redis://redis:6379/0
CELERY_BROKER_URL=redis://redis:6379/1

# MinIO
MINIO_ROOT_USER=minioadmin
MINIO_ROOT_PASSWORD=MinioAdmin@2024

# JWT
JWT_ACCESS_TOKEN_LIFETIME_MINUTES=60
JWT_REFRESH_TOKEN_LIFETIME_DAYS=7

# Email (SendGrid)
SENDGRID_API_KEY=your-sendgrid-key
DEFAULT_FROM_EMAIL=noreply@basma.sa

# SMS (Twilio)
TWILIO_ACCOUNT_SID=your-twilio-sid
TWILIO_AUTH_TOKEN=your-twilio-token

# Site
SITE_URL=http://localhost:8000
FRONTEND_URL=http://localhost:3000
