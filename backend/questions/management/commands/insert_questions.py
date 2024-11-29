from django.core.management.base import BaseCommand
from questions.models import Question

class Command(BaseCommand):
    help = 'Insertar preguntas predeterminadas en la base de datos'

    def handle(self, *args, **kwargs):
        questions_data = [
            {
                'question_text': '¿Cuál es la principal función de recursos humanos?',
                'level': 'easy',
                'options': {'a': 'Contratar empleados', 'b': 'Gestionar finanzas', 'c': 'Controlar la producción'},
                'correct_answer': 'a'
            },
            {
                'question_text': '¿Qué significa la sigla "RSE" en el contexto laboral?',
                'level': 'medium',
                'options': {'a': 'Responsabilidad Social Empresarial', 'b': 'Recursos de Salud Empresarial', 'c': 'Regulación de Salarios Estables'},
                'correct_answer': 'a'
            },
            {
                'question_text': '¿Cómo se denomina el proceso de selección de empleados en la empresa?',
                'level': 'medium',
                'options': {'a': 'Onboarding', 'b': 'Reclutamiento', 'c': 'Evaluación de desempeño'},
                'correct_answer': 'b'
            },
            {
                'question_text': '¿Qué tipo de contrato es el más utilizado en un trabajo temporal?',
                'level': 'hard',
                'options': {'a': 'Contrato por obra y servicio', 'b': 'Contrato indefinido', 'c': 'Contrato de prácticas'},
                'correct_answer': 'a'
            },
            {
                'question_text': '¿Qué es un sindicato?',
                'level': 'hard',
                'options': {'a': 'Una entidad que defiende los derechos de los trabajadores', 'b': 'Una empresa encargada de contratar empleados', 'c': 'Una organización de empresarios'},
                'correct_answer': 'a'
            }
        ]

        for data in questions_data:
            Question.objects.create(**data)
        
        self.stdout.write(self.style.SUCCESS('Preguntas insertadas exitosamente'))
