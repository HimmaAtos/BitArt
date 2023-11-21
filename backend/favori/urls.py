from django.urls import path
from rest_framework.urlpatterns import format_suffix_patterns
from . import views

urlpatterns = [
    path('favoris/', views.favori_list),
    path('favoris/<int:pk>/', views.favori_detail),
]

urlpatterns = format_suffix_patterns(urlpatterns)