
from pathlib import Path

# Build paths inside the project like this: BASE_DIR / 'subdir'.
BASE_DIR = Path(__file__).resolve().parent.parent


# Quick-start development settings - unsuitable for production
# See https://docs.djangoproject.com/en/5.1/howto/deployment/checklist/

# SECURITY WARNING: keep the secret key used in production secret!
SECRET_KEY = 'django-insecure-rf)8bqz2v2^q%c@g95izx3wa#pnj+5mb@p9a!m$^%^n9aq49bc'

# SECURITY WARNING: don't run with debug turned on in production!
DEBUG = True

ALLOWED_HOSTS = []


# Application definition

INSTALLED_APPS = [
    'django.contrib.admin',
    'django.contrib.auth',
    'django.contrib.contenttypes',
    'django.contrib.sessions',
    'django.contrib.messages',
    'django.contrib.staticfiles',
    'rest_framework',
    'drf_yasg',
    'rest_framework_simplejwt',
    'rest_framework.authtoken',
    'django_extensions',
    'corsheaders',
    'users',
    'questions',
    'trivias',
    'ranking',
]

# Desactivar CSRF para las vistas de la API
CSRF_TRUSTED_ORIGINS = [
    'http://localhost:8000',
    'http://localhost:3000',  # Si tu frontend está en el puerto 3000
]

REST_FRAMEWORK = {
    'DEFAULT_AUTHENTICATION_CLASSES': [
        'rest_framework_simplejwt.authentication.JWTAuthentication',  # Use JWT Authentication
    ],
    'DEFAULT_PERMISSION_CLASSES': [
        'rest_framework.permissions.IsAuthenticated',  # Default permissions to authenticated users
    ],
    'DEFAULT_RENDERER_CLASSES': [
        'rest_framework.renderers.JSONRenderer',  # Default renderer
        'rest_framework.renderers.BrowsableAPIRenderer',  # Enable Browsable API for interactive UI
    ],
}
from datetime import timedelta

# JWT settings for token-based authentication

SIMPLE_JWT = {
    'ACCESS_TOKEN_LIFETIME': timedelta(minutes=30),  # Token de acceso expira en 30 minutos
    'REFRESH_TOKEN_LIFETIME': timedelta(days=1),     # Token de refresco expira en 1 día
    'ROTATE_REFRESH_TOKENS': False,
    'BLACKLIST_AFTER_ROTATION': True,
    'UPDATE_LAST_LOGIN': True,
}

MIDDLEWARE = [
    'corsheaders.middleware.CorsMiddleware',  # Debe estar arriba
    'django.middleware.security.SecurityMiddleware',
    'django.contrib.sessions.middleware.SessionMiddleware',
    'django.middleware.common.CommonMiddleware',
    'django.middleware.csrf.CsrfViewMiddleware',
    'django.contrib.auth.middleware.AuthenticationMiddleware',
    'django.contrib.messages.middleware.MessageMiddleware',
    'django.middleware.clickjacking.XFrameOptionsMiddleware',
]

CORS_ALLOWED_ORIGINS = [
    "http://localhost:8000",  # Si necesitas que Django acepte solicitudes desde su propio dominio
]

CORS_ALLOW_ALL_ORIGINS = True
CORS_ALLOW_CREDENTIALS = True
CORS_ALLOW_METHODS = [
    'GET',
    'POST',
    'PUT',
    'PATCH',
    'DELETE',
    'OPTIONS'
]
LOGIN_URL = '/users/login/'  # URL definida en tu aplicación users



ROOT_URLCONF = 'tala_trivia.urls'

TEMPLATES = [
    {
        'BACKEND': 'django.template.backends.django.DjangoTemplates',
        'DIRS': [
            BASE_DIR / 'templates',  # Directorio global de plantillas
        ],
        'APP_DIRS': True,
        'OPTIONS': {
            'context_processors': [
                'django.template.context_processors.debug',
                'django.template.context_processors.request',
                'django.contrib.auth.context_processors.auth',
                'django.contrib.messages.context_processors.messages',
            ],
        },
    },
]

LOGIN_REDIRECT_URL = '/'
LOGOUT_REDIRECT_URL = '/'


WSGI_APPLICATION = 'tala_trivia.wsgi.application'
AUTH_USER_MODEL = 'users.CustomUser'


# Database
# https://docs.djangoproject.com/en/5.1/ref/settings/#databases

DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.postgresql',
        'NAME': 'tala_trivia_db',    # Nombre de la base de datos
        'USER': 'user',              # Nombre de usuario de PostgreSQL
        'PASSWORD': 'password',      # Contraseña de usuario
        'HOST': 'db',                # Nombre del servicio de la base de datos
        'PORT': '5432',              # Puerto de PostgreSQL
    }
}



# Password validation
# https://docs.djangoproject.com/en/5.1/ref/settings/#auth-password-validators

AUTH_PASSWORD_VALIDATORS = [
    {
        'NAME': 'django.contrib.auth.password_validation.UserAttributeSimilarityValidator',
    },
    {
        'NAME': 'django.contrib.auth.password_validation.MinimumLengthValidator',
    },
    {
        'NAME': 'django.contrib.auth.password_validation.CommonPasswordValidator',
    },
    {
        'NAME': 'django.contrib.auth.password_validation.NumericPasswordValidator',
    },
]


# Internationalization
# https://docs.djangoproject.com/en/5.1/topics/i18n/

LANGUAGE_CODE = 'en-us'

TIME_ZONE = 'UTC'

USE_I18N = True

USE_TZ = True


# Static files (CSS, JavaScript, Images)
# https://docs.djangoproject.com/en/5.1/howto/static-files/

STATIC_URL = 'static/'

# Default primary key field type
# https://docs.djangoproject.com/en/5.1/ref/settings/#default-auto-field

DEFAULT_AUTO_FIELD = 'django.db.models.BigAutoField'
    
# Custom settings for Swagger documentation and API root
SWAGGER_SETTINGS = {
    'USE_SESSION_AUTH': False,
    'VALIDATOR_URL': None,
}

# """
# Django settings for tala_trivia project.

# Generated by 'django-admin startproject' using Django 5.1.3.

# For more information on this file, see
# https://docs.djangoproject.com/en/5.1/topics/settings/

# For the full list of settings and their values, see
# https://docs.djangoproject.com/en/5.1/ref/settings/
# """

# from pathlib import Path

# # Build paths inside the project like this: BASE_DIR / 'subdir'.
# BASE_DIR = Path(__file__).resolve().parent.parent


# # Quick-start development settings - unsuitable for production
# # See https://docs.djangoproject.com/en/5.1/howto/deployment/checklist/

# # SECURITY WARNING: keep the secret key used in production secret!
# SECRET_KEY = 'django-insecure-rf)8bqz2v2^q%c@g95izx3wa#pnj+5mb@p9a!m$^%^n9aq49bc'

# # SECURITY WARNING: don't run with debug turned on in production!
# DEBUG = True

# ALLOWED_HOSTS = []


# # Application definition

# INSTALLED_APPS = [
#     'django.contrib.admin',
#     'django.contrib.auth',
#     'django.contrib.contenttypes',
#     'django.contrib.sessions',
#     'django.contrib.messages',
#     'django.contrib.staticfiles',
#     'rest_framework',
#     'drf_yasg',
#     'rest_framework_simplejwt',
#     'rest_framework.authtoken',
#     'django_extensions',
#     'corsheaders',
#     'users',
#     'questions',
#     'trivias',
#     'ranking',
# ]

# # Desactivar CSRF para las vistas de la API
# CSRF_TRUSTED_ORIGINS = [
#     'http://localhost:8000',
#     'http://localhost:3000',  # Si tu frontend está en el puerto 3000
# ]

# REST_FRAMEWORK = {
#     'DEFAULT_AUTHENTICATION_CLASSES': [
#         'rest_framework_simplejwt.authentication.JWTAuthentication',  # Use JWT Authentication
#     ],
#     'DEFAULT_PERMISSION_CLASSES': [
#         'rest_framework.permissions.IsAuthenticated',  # Default permissions to authenticated users
#     ],
#     'DEFAULT_RENDERER_CLASSES': [
#         'rest_framework.renderers.JSONRenderer',  # Default renderer
#         'rest_framework.renderers.BrowsableAPIRenderer',  # Enable Browsable API for interactive UI
#     ],
# }
# from datetime import timedelta

# # JWT settings for token-based authentication

# SIMPLE_JWT = {
#     'ACCESS_TOKEN_LIFETIME': timedelta(minutes=30),  # Token de acceso expira en 30 minutos
#     'REFRESH_TOKEN_LIFETIME': timedelta(days=1),     # Token de refresco expira en 1 día
#     'ROTATE_REFRESH_TOKENS': False,
#     'BLACKLIST_AFTER_ROTATION': True,
#     'UPDATE_LAST_LOGIN': True,
# }

# MIDDLEWARE = [
#     'corsheaders.middleware.CorsMiddleware',  # Debe estar arriba
#     'django.middleware.security.SecurityMiddleware',
#     'django.contrib.sessions.middleware.SessionMiddleware',
#     'django.middleware.common.CommonMiddleware',
#     'django.middleware.csrf.CsrfViewMiddleware',
#     'django.contrib.auth.middleware.AuthenticationMiddleware',
#     'django.contrib.messages.middleware.MessageMiddleware',
#     'django.middleware.clickjacking.XFrameOptionsMiddleware',
# ]

# CORS_ALLOWED_ORIGINS = [
#     "http://localhost:3000",  # Si estás usando un frontend en React
#     "http://localhost:8000",  # Si necesitas que Django acepte solicitudes desde su propio dominio
# ]

# CORS_ALLOW_ALL_ORIGINS = True
# CORS_ALLOW_CREDENTIALS = True
# CORS_ALLOW_METHODS = [
#     'GET',
#     'POST',
#     'PUT',
#     'PATCH',
#     'DELETE',
#     'OPTIONS'
# ]
# LOGIN_URL = '/users/login/'  # URL definida en tu aplicación users



# ROOT_URLCONF = 'tala_trivia.urls'

# TEMPLATES = [
#     {
#         'BACKEND': 'django.template.backends.django.DjangoTemplates',
#         'DIRS': [
#             BASE_DIR / 'templates',  # Directorio global de plantillas
#         ],
#         'APP_DIRS': True,
#         'OPTIONS': {
#             'context_processors': [
#                 'django.template.context_processors.debug',
#                 'django.template.context_processors.request',
#                 'django.contrib.auth.context_processors.auth',
#                 'django.contrib.messages.context_processors.messages',
#             ],
#         },
#     },
# ]

# WSGI_APPLICATION = 'tala_trivia.wsgi.application'
# AUTH_USER_MODEL = 'users.CustomUser'


# # Database
# # https://docs.djangoproject.com/en/5.1/ref/settings/#databases

# DATABASES = {
#     'default': {
#         'ENGINE': 'django.db.backends.postgresql',
#         'NAME': 'tala_trivia_db',    # Nombre de la base de datos
#         'USER': 'user',              # Nombre de usuario de PostgreSQL
#         'PASSWORD': 'password',      # Contraseña de usuario
#         'HOST': 'db',                # Nombre del servicio de la base de datos
#         'PORT': '5432',              # Puerto de PostgreSQL
#     }
# }



# # Password validation
# # https://docs.djangoproject.com/en/5.1/ref/settings/#auth-password-validators

# AUTH_PASSWORD_VALIDATORS = [
#     {
#         'NAME': 'django.contrib.auth.password_validation.UserAttributeSimilarityValidator',
#     },
#     {
#         'NAME': 'django.contrib.auth.password_validation.MinimumLengthValidator',
#     },
#     {
#         'NAME': 'django.contrib.auth.password_validation.CommonPasswordValidator',
#     },
#     {
#         'NAME': 'django.contrib.auth.password_validation.NumericPasswordValidator',
#     },
# ]


# # Internationalization
# # https://docs.djangoproject.com/en/5.1/topics/i18n/

# LANGUAGE_CODE = 'en-us'

# TIME_ZONE = 'UTC'

# USE_I18N = True

# USE_TZ = True


# # Static files (CSS, JavaScript, Images)
# # https://docs.djangoproject.com/en/5.1/howto/static-files/

# STATIC_URL = 'static/'

# # Default primary key field type
# # https://docs.djangoproject.com/en/5.1/ref/settings/#default-auto-field

# DEFAULT_AUTO_FIELD = 'django.db.models.BigAutoField'
    
# # Custom settings for Swagger documentation and API root
# SWAGGER_SETTINGS = {
#     'USE_SESSION_AUTH': False,
#     'VALIDATOR_URL': None,
# }
