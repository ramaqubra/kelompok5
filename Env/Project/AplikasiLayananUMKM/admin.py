from django.contrib import admin
# E1E122025_ NUR FADILLAH
from .models import Menu, AishTea, Saguku, Wang

@admin.register(Menu)
class Menu(admin.ModelAdmin):
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