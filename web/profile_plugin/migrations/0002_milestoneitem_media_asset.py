# -*- coding: utf-8 -*-
# Generated by Django 1.11.11 on 2018-04-03 15:45
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('profile_plugin', '0001_initial'),
    ]

    operations = [
        migrations.AddField(
            model_name='milestoneitem',
            name='media_asset',
            field=models.ImageField(blank=True, default='', null=True, upload_to='profile/milestone_image/'),
        ),
    ]