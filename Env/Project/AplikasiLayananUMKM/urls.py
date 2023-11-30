# Nurendro Hardjo_E1E122133
from django.urls import path
from .views import index, menu, aishtea, saguku, wang

urlpatterns = [
    path('', views.index, name="index"),
    path('details', views.details, name="details"),
]
