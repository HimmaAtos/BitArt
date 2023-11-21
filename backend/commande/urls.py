from django.urls import path
from . import views
from rest_framework.urlpatterns import format_suffix_patterns


urlpatterns = [
    path('commandes/', views.commande_list),
    path('commandes/<int:pk>/', views.commande_detail),
]

urlpatterns = format_suffix_patterns(urlpatterns)