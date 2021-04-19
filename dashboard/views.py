from django.shortcuts import render
from django.views import View
from django.contrib.auth.models import User
from django.shortcuts import redirect
from social.models import UserProfile, Post
from django.urls import reverse_lazy

from django.contrib.auth.mixins import UserPassesTestMixin, LoginRequiredMixin
from django.views.generic import UpdateView, DeleteView


# Create your views here.


def unauthenticated_user(view_function):
    def wrapper_function(request, *args, **kwargs):
        if request.user.is_authenticated:
            if request.user.is_staff:
                return redirect('/')
            elif not request.user.is_staff:
                return redirect('/')
        else:
            return view_function(request, *args, **kwargs)
    return wrapper_function


def admin_only(view_function):
    def wrapper_function(request, *args, **kwargs):
        if request.user.is_staff:
            return view_function(request, *args, **kwargs)
        else:
            return redirect('/')
    return wrapper_function


def user_only(view_function):
    def wrapper_function(request, *args, **kwargs):
        if request.user.is_staff:
            return redirect('myadmin:admin-dashboard')
        else:
            return view_function(request, *args, **kwargs)
    return wrapper_function

class Index(View):
    def get(self, request, *args, **kwargs):
        posts_count = Post.objects.all().count()
        users_count = User.objects.all().count()
        context = {
            'posts_count':posts_count,
            'users_count':users_count
        }
        return render(request, 'dashboard/admin.html', context)


def getUsers(request):
    users = User.objects.all()
    context = {
        'users':users
    }
    return render(request, 'dashboard/users.html', context)

@admin_only
def delete_user(request, username):
    user = User.objects.get(username=username)
    user.delete()
    return redirect('adminUsers')

def getPosts(request):
    posts = Post.objects.all()
    context = {
        'posts':posts
    }
    return render(request, 'dashboard/posts.html', context)



class ProfileEditView(LoginRequiredMixin, UserPassesTestMixin, UpdateView):
    model = UserProfile
    fields = ['name', 'bio', 'birthdate', 'location', 'picture']
    template_name = 'social/profile_edit.html'

    def get_success_url(self):
        return reverse_lazy('adminUsers')

    def test_func(self):
        return self.request.user.is_staff

@admin_only
def delete_post(request, id):
    posts = Post.objects.get(id=id)
    posts.delete()
    return redirect('adminPosts')