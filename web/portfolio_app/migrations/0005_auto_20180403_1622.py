# -*- coding: utf-8 -*-
# Generated by Django 1.11.11 on 2018-04-03 09:22
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('portfolio_app', '0004_auto_20180403_1529'),
    ]

    operations = [
        migrations.AlterField(
            model_name='mediaasset',
            name='media_asset',
            field=models.ImageField(default='', null=True, upload_to='portfolio/img/'),
        ),
    ]
