# Generated by Django 3.1.6 on 2021-04-02 13:39

from django.db import migrations


class Migration(migrations.Migration):
    dependencies = [
        ('social', '0009_auto_20210402_1915'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='comment',
            name='replyd',
        ),
        migrations.RemoveField(
            model_name='comment',
            name='replyl',
        ),
    ]
