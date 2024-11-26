# questions/management/commands/create_groups_and_permissions.py
from django.core.management.base import BaseCommand
from django.contrib.auth.models import Group, Permission
from django.contrib.contenttypes.models import ContentType
from questions.models import Question

class Command(BaseCommand):
    help = 'Crear grupos y asignar permisos para las preguntas'

    def handle(self, *args, **kwargs):
        # Crear grupos
        admin_group, _ = Group.objects.get_or_create(name='admin')
        jugador_group, _ = Group.objects.get_or_create(name='jugador')

        # Obtener permisos
        content_type = ContentType.objects.get_for_model(Question)
        can_add_question = Permission.objects.get_or_create(
            codename='add_question',
            name='Can add question',
            content_type=content_type,
        )[0]
        can_change_question = Permission.objects.get_or_create(
            codename='change_question',
            name='Can change question',
            content_type=content_type,
        )[0]

        # Asignar permisos al grupo admin
        admin_group.permissions.add(can_add_question, can_change_question)

        self.stdout.write(self.style.SUCCESS('Grupos y permisos creados correctamente'))
