from django.shortcuts import render
from django.http import HttpResponse
from django.template import loader
# ICHA ANAWAI_E1E122099
from .models import Menu, AishTea, Saguku, Wang

def base_details(request, queryset, template_name):
    template = loader.get_template(template_name)
    context = {'items': queryset}
    return HttpResponse(template.render(context, request))

# RAMA QUBRA PUTRA_E1E122136
def menu(request):
    return base_details(request, Menu.objects.all(), 'details.html')

def aishtea(request):
    return base_details(request, AishTea.objects.all(), 'details.html')