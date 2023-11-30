from django.db import models

class Menu(models.Model):
    nama_menu = models.CharField(max_length=255)
    deskripsi = models.TextField()
    harga = models.DecimalField(max_digits=10, decimal_places=2)
    gambar = models.ImageField(upload_to='img/', null=True)

    def __str__(self):
        return f"{self.nama_menu}"

# Ngawal Muhamad_E1E122129
class AishTea(Menu):
    pass

class Saguku(Menu):
    pass

class Wang(Menu):
    pass