# -*- coding: utf-8 -*-
# Generated by Django 1.11.11 on 2018-08-07 11:16
from __future__ import unicode_literals

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
        ('cms', '0018_pagenode'),
    ]

    operations = [
        migrations.CreateModel(
            name='TextCenter',
            fields=[
                ('cmsplugin_ptr', models.OneToOneField(auto_created=True, on_delete=django.db.models.deletion.CASCADE, parent_link=True, primary_key=True, related_name='home_plugin_textcenter', serialize=False, to='cms.CMSPlugin')),
                ('title', models.CharField(blank=True, default='', max_length=250, null=True)),
                ('description', models.TextField(blank=True, default='', null=True)),
            ],
            options={
                'abstract': False,
            },
            bases=('cms.cmsplugin',),
        ),
    ]