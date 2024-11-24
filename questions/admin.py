# questions/admin.py
from django.contrib import admin
from .models import Question

class QuestionAdmin(admin.ModelAdmin):
    list_display = ('question_text', 'level', 'correct_answer', 'get_options')
    search_fields = ('question_text', 'level', 'correct_answer')
    list_filter = ('level',)
    ordering = ['level', 'question_text']
    readonly_fields = ('question_text', 'level', 'correct_answer', 'get_options')

    # Método para mostrar las opciones de manera legible
    def get_options(self, obj):
        # 'obj' es la instancia de la pregunta
        return ', '.join([f"{key}: {value}" for key, value in obj.options.items()])
    get_options.short_description = 'Options'  # Este nombre aparecerá en el encabezado de la columna

# Registrar el modelo Question en el admin de Django
admin.site.register(Question, QuestionAdmin)
