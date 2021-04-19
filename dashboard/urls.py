from django.urls import path
from dashboard.views import Index, Users, Posts

urlpatterns = [
    path('', Index.as_view(), name='dashboard'),
    path('users', Index.as_view(), name='users'),
    path('posts', Index.as_view(), name='posts'),
]
