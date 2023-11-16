from django.urls import path
from .views import RegisterView,LoginView,utilisateur_detail,utilisateur_list

urlpatterns = [
    path('register', RegisterView.as_view()),
    path('login', LoginView.as_view()),
    path('utilisateur/<int:pk>', utilisateur_detail),
    path('utilisateur/', utilisateur_list ),
]