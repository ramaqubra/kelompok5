# Nurendro Hardjo_E1E122133
from django.urls import path
from .views import index, menu, aishtea, saguku, wang

urlpatterns = [
    path('', index, name="index"),
     # Yabrina Angelika Rantelili_E1E122081
    path('menu/', menu, name='menu'),
    path('aishtea/', aishtea, name='aishtea'),
    path('saguku/', saguku, name='saguku'),
    path('wang/', wang, name='wang'),
]
