

# tala_trivia/urls.py
from django.contrib import admin
from django.urls import path, include
from rest_framework.routers import DefaultRouter
from users.views import UserViewSet
from questions.views import QuestionViewSet
from trivias.views import TriviaViewSet
from ranking.views import RankingViewSet

router = DefaultRouter()
router.register(r'users', UserViewSet)
router.register(r'questions', QuestionViewSet)
router.register(r'trivias', TriviaViewSet)
router.register(r'ranking', RankingViewSet)

urlpatterns = [
    path('admin/', admin.site.urls),
    path('api/', include(router.urls)),
]
