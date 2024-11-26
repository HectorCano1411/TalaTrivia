# questions/apps.py
from django.apps import AppConfig
from django.utils.module_loading import import_string

class QuestionsConfig(AppConfig):
    default_auto_field = "django.db.models.BigAutoField"
    name = "questions"
