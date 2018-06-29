# -*- coding: utf-8 -*-
# Generated by Django 1.11.11 on 2018-06-28 12:18
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('portfolio_app', '0010_auto_20180628_1917'),
    ]

    operations = [
        migrations.AddField(
            model_name='project',
            name='android_demo_url',
            field=models.URLField(blank=True, default='', max_length=500, null=True),
        ),
        migrations.AddField(
            model_name='project',
            name='ios_demo_url',
            field=models.URLField(blank=True, default='', max_length=500, null=True),
        ),
    ]