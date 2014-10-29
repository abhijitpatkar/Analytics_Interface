from django.shortcuts import render,render_to_response
from django.template import RequestContext
from models import *
# Create your views here.

def dashboard(request):
    return render_to_response('html/basic.htm',{})

def courchart(request):
    return render_to_response('html/courchart.htm',{})

def genchart(request):
    return render_to_response('html/genderchart.htm',{})
