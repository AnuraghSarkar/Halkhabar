from django import forms

from .models import Comment, Post


class PostForm(forms.ModelForm):
    body = forms.CharField(label='', widget=forms.Textarea(attrs={
        'rows': '3',
        'placeholder': 'Express yourself here !'
    }))

    class Meta:
        model = Post
        fields = ['body']


class CommentForm(forms.ModelForm):
    comment = forms.CharField(label='', widget=forms.Textarea(attrs={
        'rows': '3',
        'placeholder': 'Comment Your Views !'
    }))

    class Meta:
        model = Comment
        fields = ['comment']
