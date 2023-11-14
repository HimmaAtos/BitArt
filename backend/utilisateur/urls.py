from django.urls import path
from .views import RegisterView,LoginView, LogoutView, ChangePasswordView

urlpatterns = [
    path('register/', RegisterView.as_view()),
    path('login/', LoginView.as_view()),
    path('logout/', LogoutView.as_view()),
    path('change_password/<int:pk>/', ChangePasswordView.as_view()),

]