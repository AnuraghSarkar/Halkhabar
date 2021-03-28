from django.urls import path
from django.urls.conf import include
from .views import PostListView, PostDetailView, PostEditView, PostDeleteView, CommentDeleteView, ProfileView, ProfileEditView, AddFollower, RemoveFollower, AddDislike, AddLike

urlpatterns = [
    path('', PostListView.as_view(), name='post_list'),
    path('post/<int:pk>/', PostDetailView.as_view(), name='post_detail'),
    path('post/edit/<int:pk>/', PostEditView.as_view(), name='post_edit'),
    path('post/delete/<int:pk>/', PostDeleteView.as_view(), name='post_delete'),
    path('post/<int:post_pk>/comment/delete/<int:pk>/',
         CommentDeleteView.as_view(), name='comment_delete'),
    path('post/<int:pk>/like', AddLike.as_view(), name='like'),
    path('post/<int:pk>/dislike', AddDislike.as_view(), name='dislike'),
    
    path('profile/<int:pk>/',ProfileView.as_view(), name='profile'),
    path('profile/edit/<int:pk>/',ProfileEditView.as_view(), name='profile_edit'),
    path('profile/<int:pk>/followers/add', AddFollower.as_view(), name='add_follower'),    
    path('profile/<int:pk>/followers/remove', RemoveFollower.as_view(), name='remove_follower'),


]
