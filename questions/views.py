from rest_framework import generics
from .models import Question
from .serializers import QuestionSerializer
from .permissions import IsAdminOrReadOnly  # Importar el permiso personalizado

class QuestionListView(generics.ListAPIView):
    queryset = Question.objects.all()
    serializer_class = QuestionSerializer
    permission_classes = [IsAdminOrReadOnly]  # Solo admins pueden modificar, todos pueden leer

class QuestionCreateView(generics.CreateAPIView):
    queryset = Question.objects.all()
    serializer_class = QuestionSerializer
    permission_classes = [IsAdminOrReadOnly]  # Solo admins pueden crear preguntas

class QuestionDetailView(generics.RetrieveAPIView):
    queryset = Question.objects.all()
    serializer_class = QuestionSerializer
    permission_classes = [IsAdminOrReadOnly]  # Solo admins pueden modificar o borrar

class QuestionEditView(generics.UpdateAPIView):
    queryset = Question.objects.all()
    serializer_class = QuestionSerializer
    permission_classes = [IsAdminOrReadOnly]  # Solo admins pueden editar

class QuestionDeleteView(generics.DestroyAPIView):
    queryset = Question.objects.all()
    serializer_class = QuestionSerializer
    permission_classes = [IsAdminOrReadOnly]  # Solo admins pueden eliminar preguntas
