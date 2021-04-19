from django.urls import path
from dashboard.views import Index, delete_post, delete_user, getUsers, getPosts, ProfileEditView

urlpatterns = [
    path('', Index.as_view(), name='dashboard'),
    # path('users', Users.as_view(), name='users'),
    path('posts', getPosts, name='adminPosts'),
    path('users', getUsers, name='adminUsers'),
    path('users/delete/<str:username>', delete_user, name='delete_user'),
    path('users/edit/<int:pk>/', ProfileEditView.as_view(), name='admin_edit'),
    path('posts/delete/<int:id>', delete_post, name='delete_post'),
]
