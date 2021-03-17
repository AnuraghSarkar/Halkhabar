import django
from django.shortcuts import render
from django.views import View
from .forms import PostForm
from .models import Post
from django.shortcuts import get_object_or_404

class PostListView(View):
    def get(self, request, *args, **kwargs):
        posts = Post.objects.all().order_by('-created_on')
        form = PostForm()
        context = {
            'post_list' : posts,
            'form': form,
        }

        return render(request, 'social/post_list.html', context)

    def post(self, request, *args, **kwargs):
        posts = Post.objects.all().order_by('-created_on')
        
        form = PostForm(request.POST)

        if form.is_valid():
            new_post = form.save(commit=False)
            new_post.author = request.user
            new_post.save()
            
        context = {
            'post_list' : posts,
            'form': form,
        }

        return render(request, 'social/post_list.html', context)


class PostDetailView(View):
    def get(self, request, pk, *args, **kwargs):
        try:
            post = Post.objects.get(pk=pk)
        except Post.DoesNotExist:
            post=None

        context = {
            'post': post,
        }

        return render(request, 'social/post_detail.html', context)

    def post(self, request, *args, **kwargs):
        pass