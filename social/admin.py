from django.contrib import admin
from django.contrib.auth.models import User
from .models import Post, UserProfile, Comment

admin.site.register(Post)
admin.site.register(UserProfile)
admin.site.register(Comment)
