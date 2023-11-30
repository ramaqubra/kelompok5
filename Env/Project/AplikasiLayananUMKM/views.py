from django.shortcuts import render
from django.http import HttpResponse
from django.template import loader
# ICHA ANAWAI_E1E122099
from .models import Menu, AishTea, Saguku, Wang

def index(request):
    template = loader.get_template('index.html')
    return HttpResponse(template.render())

def base_details(request, queryset, template_name):
    template = loader.get_template(template_name)
    context = {'items': queryset}
    return HttpResponse(template.render(context, request))

# RAMA QUBRA PUTRA_E1E122136
def menu(request):
    return base_details(request, Menu.objects.all(), 'details.html')

def aishtea(request):
    return base_details(request, AishTea.objects.all(), 'details.html')

# Ni Luh Ica Ardini_E1E122130

def saguku(request):
    return base_details(request, Saguku.objects.all(), 'details.html')

def wang(request):
    return base_details(request, Wang.objects.all(), 'details.html')