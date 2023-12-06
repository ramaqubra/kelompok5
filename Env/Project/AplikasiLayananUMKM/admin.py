from django.contrib import admin
# E1E122025_ NUR FADILLAH
from .models import Roti, AishTea, Saguku, Wang

# Uzlah merubah import dan register Menu menjadi Roti dan RotiAdmin 
@admin.register(Roti)
class RotiAdmin(admin.ModelAdmin):
    list_display = ['nama_menu', 'harga']

@admin.register(AishTea)
class AishTeaAdmin(admin.ModelAdmin):
    list_display = ['nama_menu', 'harga']
    
# E1E122070_MUHAMMAD RAIHAN PUTRA KHAMIL
@admin.register(Saguku)
class SagukuAdmin(admin.ModelAdmin):
    list_display = ['nama_menu', 'harga']

@admin.register(Wang)
class WangAdmin(admin.ModelAdmin):
    list_display = ['nama_menu', 'harga']