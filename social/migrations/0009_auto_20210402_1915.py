# Generated by Django 3.1.6 on 2021-04-02 13:30

from django.db import migrations


class Migration(migrations.Migration):
    dependencies = [
        ('social', '0008_auto_20210402_1909'),
    ]

    operations = [
        migrations.RenameField(
            model_name='comment',
            old_name='reply_dislikes',
            new_name='replyd',
        ),
        migrations.RenameField(
            model_name='comment',
            old_name='reply_likes',
            new_name='replyl',
        ),
    ]