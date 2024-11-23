from django.contrib import admin
from .models import Question

# Personalización del modelo Question
class QuestionAdmin(admin.ModelAdmin):
    list_display = ('question_text', 'level', 'correct_answer', 'get_options')
    search_fields = ('question_text', 'level', 'correct_answer')
    list_filter = ('level',)  # Filtros para las dificultades de las preguntas
    ordering = ['level', 'question_text']  # Ordenar por nivel y luego por texto de la pregunta
    readonly_fields = ('question_text', 'level', 'correct_answer', 'get_options')

    # Método para mostrar las opciones de manera legible
    def get_options(self, obj):
        return ', '.join([f"{key}: {value}" for key, value in obj.options.items()])
    get_options.short_description = 'Options'

# Registrar el modelo Question en el admin de Django
admin.site.register(Question, QuestionAdmin)
