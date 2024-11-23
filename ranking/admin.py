from django.contrib import admin
from .models import Ranking
from trivias.models import Trivia
from users.models import CustomUser

# Personalización del modelo Ranking
class RankingAdmin(admin.ModelAdmin):
    list_display = ('trivia', 'user', 'score')
    search_fields = ('user__username', 'trivia__name', 'score')
    list_filter = ('trivia', 'score')
    ordering = ['-score']  # Asegura que se ordenen por puntaje más alto primero
    readonly_fields = ('trivia', 'user', 'score')

    # Métodos para mostrar información más amigable en la administración
    def get_user_name(self, obj):
        return obj.user.username
    get_user_name.short_description = 'User'

    def get_trivia_name(self, obj):
        return obj.trivia.name
    get_trivia_name.short_description = 'Trivia'

# Registrar el modelo Ranking en el admin de Django
admin.site.register(Ranking, RankingAdmin)
