from django.contrib import admin
from .models import Ranking
from trivias.models import Trivia
from users.models import CustomUser
from django import forms

# Formulario personalizado para el modelo Ranking
class RankingForm(forms.ModelForm):
    class Meta:
        model = Ranking
        fields = ['trivia', 'user', 'score']  # Especificamos los campos que queremos que se muestren

    # Aseguramos que el campo 'score' sea siempre un número positivo
    def clean_score(self):
        score = self.cleaned_data.get('score')
        if score < 0:
            raise forms.ValidationError("El puntaje no puede ser negativo")
        return score

# Personalización del modelo Ranking
class RankingAdmin(admin.ModelAdmin):
    list_display = ('get_trivia_name', 'get_user_name', 'score')  # Mostramos los nombres en lugar de las relaciones
    search_fields = ('user__username', 'trivia__name', 'score')
    list_filter = ('trivia', 'score')
    ordering = ['-score']  # Ordenamos por puntaje más alto primero
    form = RankingForm  # Usamos el formulario personalizado

    # Métodos para mostrar información más amigable en la administración
    def get_user_name(self, obj):
        return obj.user.username
    get_user_name.short_description = 'User'

    def get_trivia_name(self, obj):
        return obj.trivia.name
    get_trivia_name.short_description = 'Trivia'

# Registrar el modelo Ranking en el admin de Django
admin.site.register(Ranking, RankingAdmin)
