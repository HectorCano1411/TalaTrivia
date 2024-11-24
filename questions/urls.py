# questions/urls.py
from django.urls import path
from .views import QuestionListView, QuestionDetailView, QuestionCreateView, QuestionEditView, QuestionDeleteView

urlpatterns = [
    path('api/questions/', QuestionListView.as_view(), name='question-list'),
    path('api/questions/<int:pk>/', QuestionDetailView.as_view(), name='question-detail'),
    path('create/', QuestionCreateView.as_view(), name='question-create'),
    path('api/questions/<int:pk>/edit/', QuestionEditView.as_view(), name='question-edit'),
    path('api/questions/<int:pk>/delete/', QuestionDeleteView.as_view(), name='question-delete'),
]
