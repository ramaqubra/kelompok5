# E1E122025_ NUR FADILLAH
from .models import Menu, AishTea, Saguku, Wang

@admin.register(Menu)
class Menu(admin.ModelAdmin):
    list_display = ['nama_menu', 'harga']

@admin.register(AishTea)
class AishTeaAdmin(admin.ModelAdmin):
    list_display = ['nama_menu', 'harga']