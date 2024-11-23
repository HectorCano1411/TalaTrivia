from django.contrib import admin

# Register your models here.
from django.contrib import admin
from .models import Trivia, Participation
from django.contrib.auth import get_user_model
from questions.models import Question

# Personalización del modelo Trivia
class TriviaAdmin(admin.ModelAdmin):
    list_display = ('name', 'description', 'get_users', 'get_questions')
    search_fields = ('name', 'description')
    list_filter = ('name',)
    
    # Métodos para mostrar los usuarios y preguntas asociados a la trivia
    def get_users(self, obj):
        return ", ".join([user.username for user in obj.users.all()])
    get_users.short_description = 'Users'
    
    def get_questions(self, obj):
        return ", ".join([str(question) for question in obj.questions.all()])
    get_questions.short_description = 'Questions'

# Personalización del modelo Participation
class ParticipationAdmin(admin.ModelAdmin):
    list_display = ('user', 'trivia', 'score', 'get_answers')
    search_fields = ('user__username', 'trivia__name')
    list_filter = ('score',)
    
    # Método para mostrar las respuestas del usuario en formato legible
    def get_answers(self, obj):
        return str(obj.answers)
    get_answers.short_description = 'Answers'

# Registrar los modelos en el admin de Django
admin.site.register(Trivia, TriviaAdmin)
admin.site.register(Participation, ParticipationAdmin)
