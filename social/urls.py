from django.urls import path

from .views import PostListView, PostDetailView, PostEditView, PostDeleteView, CommentDeleteView, ProfileView, \
    ProfileEditView, AddFollower, RemoveFollower, AddDislike, AddLike, UserSearch, ListFollowers, AddCommentLike, \
    AddCommentDislike, CommentReplyView, PostNotification, FollowNotification, RemoveNotification

urlpatterns = [

    # Post Url Patterns
    path('', PostListView.as_view(), name='post_list'),
    path('post/<int:pk>/', PostDetailView.as_view(), name='post_detail'),
    path('post/edit/<int:pk>/', PostEditView.as_view(), name='post_edit'),
    path('post/delete/<int:pk>/', PostDeleteView.as_view(), name='post_delete'),
    path('post/<int:post_pk>/comment/delete/<int:pk>/',
         CommentDeleteView.as_view(), name='comment_delete'),
    path('post/<int:pk>/like', AddLike.as_view(), name='like'),
    path('post/<int:pk>/dislike', AddDislike.as_view(), name='dislike'),
    path('post/<int:post_pk>/comment/<int:pk>/like', AddCommentLike.as_view(), name='comment_like'),
    path('post/<int:post_pk>/comment/<int:pk>/dislike', AddCommentDislike.as_view(), name='comment_dislike'),
    path('post/<int:post_pk>/comment/<int:pk>/reply', CommentReplyView.as_view(), name='comment_reply'),

    # Profile Url Patterns

    path('profile/<int:pk>/', ProfileView.as_view(), name='profile'),
    path('profile/edit/<int:pk>/', ProfileEditView.as_view(), name='profile_edit'),
    path('profile/<int:pk>/followers/add', AddFollower.as_view(), name='add_follower'),
    path('profile/<int:pk>/followers/remove', RemoveFollower.as_view(), name='remove_follower'),
    path('profile/<int:pk>/followers/', ListFollowers.as_view(), name='list_followers'),

    path('search/', UserSearch.as_view(), name='profile_search'),
    path('notification/<int:notification_pk>/post/<int:post_pk>', PostNotification.as_view(), name='post_notification'),
    path('notification/<int:notification_pk>/profile/<int:profile_pk>', FollowNotification.as_view(), name='follow_notification'),
    path('notification/delete/<int:notification_pk>', RemoveNotification.as_view(), name='notification_delete'),

]

handler404 = 'social.views.error_404'
handler500 = 'social.views.error_500'
handler403 = 'social.views.error_403'
handler400 = 'social.views.error_400'