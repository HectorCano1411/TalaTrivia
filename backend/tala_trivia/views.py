from rest_framework.views import APIView
from rest_framework.permissions import AllowAny
from rest_framework.response import Response

class ApiRootView(APIView):
    permission_classes = [AllowAny]  # Make sure it's accessible without authentication

    def get(self, request, format=None):
        return Response({
            'users': '/api/users/',
            'questions': '/api/questions/',
            'trivias': '/api/trivias/',
            'ranking': '/api/ranking/',
        })