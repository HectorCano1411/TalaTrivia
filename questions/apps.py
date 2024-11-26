# questions/apps.py
from django.apps import AppConfig
from django.utils.module_loading import import_string

# class QuestionsConfig(AppConfig):
#     default_auto_field = "django.db.models.BigAutoField"
#     name = "questions"

#     def ready(self):
#         # Lógica que se ejecuta cuando las aplicaciones están cargadas
#         from django.contrib.auth.models import Group, Permission
#         from django.contrib.contenttypes.models import ContentType
#         from .models import Question  # Importación del modelo local

#         # Crear grupos y asignar permisos
#         admin_group, _ = Group.objects.get_or_create(name='admin')
#         jugador_group, _ = Group.objects.get_or_create(name='jugador')

#         # Obtener permisos específicos
#         content_type = ContentType.objects.get_for_model(Question)
#         can_add_question = Permission.objects.get_or_create(
#             codename='add_question',
#             name='Can add question',
#             content_type=content_type,
#         )[0]
#         can_change_question = Permission.objects.get_or_create(
#             codename='change_question',
#             name='Can change question',
#             content_type=content_type,
#         )[0]

#         # Asignar permisos al grupo admin
#         admin_group.permissions.add(can_add_question, can_change_question)
#         # Opcional: Asignar permisos básicos al grupo jugador
