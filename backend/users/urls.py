from django.urls import path
from .views import HomeView, RegisterView, LoginView, UserDeleteView, UserEditView, UserListView, delete_all_users


urlpatterns = [
    path('', HomeView.as_view(), name='home'),  # Ruta para cargar home.html

    path('register/', RegisterView.as_view(), name='register'),
    path('login/', LoginView.as_view(), name='login'),
    path('users/', UserListView.as_view(), name='user-list'),  # URL correcta para listar usuarios
    # Editar un usuario por ID
    path('users/<int:pk>/edit/', UserEditView.as_view(), name='user-edit'),
    
    # Eliminar un usuario por ID
    path('users/<int:pk>/delete/', UserDeleteView.as_view(), name='user-delete'),
    
    # Eliminar todos los usuarios (solo superusuario)
    path('users/delete-all/', delete_all_users, name='delete-all-users'),
]
