from django.core.management.base import BaseCommand
from django.contrib.auth.models import Group, Permission
from django.contrib.contenttypes.models import ContentType
from questions.models import Question

class Command(BaseCommand):
    help = 'Crea grupos y asigna permisos'

    def handle(self, *args, **kwargs):
        # Crear grupos
        admin_group, _ = Group.objects.get_or_create(name='admin')
        jugador_group, _ = Group.objects.get_or_create(name='jugador')

        # Crear permisos
        content_type = ContentType.objects.get_for_model(Question)
        can_add_question, _ = Permission.objects.get_or_create(
            codename='add_question',
            name='Can add question',
            content_type=content_type,
        )
        can_change_question, _ = Permission.objects.get_or_create(
            codename='change_question',
            name='Can change question',
            content_type=content_type,
        )

        # Asignar permisos a los grupos
        admin_group.permissions.add(can_add_question, can_change_question)

        self.stdout.write(self.style.SUCCESS('Grupos y permisos creados correctamente.'))
