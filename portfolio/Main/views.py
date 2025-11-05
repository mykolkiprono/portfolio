from django.shortcuts import render

def home(request):
    return render(request, 'portfolio-main/index.html')
