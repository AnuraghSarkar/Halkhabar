from django.shortcuts import render
from django.views import View

# Create your views here.

class Index(View):
    def get(self, request, *args, **kwargs):
        return render(request, 'dashboard/admin.html')


class Users(View):
    def get(self, request, *args, **kwargs):
        return render(request, 'dashboard/users.html')

class Posts(View):
    def get(self, request, *args, **kwargs):
        return render(request, 'dashboard/posts.html')
