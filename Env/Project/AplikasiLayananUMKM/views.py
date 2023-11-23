from django.shortcuts import render
from django.http import HttpResponse
from django.template import loader
from .models import Menu

def index(request):
    template = loader.get_template('index.html')
    return HttpResponse(template.render())

def details(request):
    menu = Menu.objects.all()
    template = loader.get_template('details.html')
    context = {
        'menu':menu
    }
    return HttpResponse(template.render(context,request))
