from django.urls import path
from . import views
from rest_framework.urlpatterns import format_suffix_patterns


urlpatterns = [
    path('paniers/', views.panier_list),
    path('paniers/<int:pk>/', views.panier_detail),
]

urlpatterns = format_suffix_patterns(urlpatterns)