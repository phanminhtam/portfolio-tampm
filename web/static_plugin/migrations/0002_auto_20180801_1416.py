# -*- coding: utf-8 -*-
# Generated by Django 1.11.11 on 2018-08-01 07:16
from __future__ import unicode_literals

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('static_plugin', '0001_initial'),
    ]

    operations = [
        migrations.RenameField(
            model_name='headermodel',
            old_name='header',
            new_name='header_logo',
        ),
    ]
