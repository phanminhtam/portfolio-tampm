# -*- coding: utf-8 -*-
# Generated by Django 1.11.11 on 2018-08-14 05:19
from __future__ import unicode_literals

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('cms', '0018_pagenode'),
        ('home_plugin', '0001_initial'),
    ]

    operations = [
        migrations.CreateModel(
            name='ShortHeader',
            fields=[
                ('cmsplugin_ptr', models.OneToOneField(auto_created=True, on_delete=django.db.models.deletion.CASCADE, parent_link=True, primary_key=True, related_name='home_plugin_shortheader', serialize=False, to='cms.CMSPlugin')),
                ('title', models.CharField(blank=True, default='', max_length=250, null=True)),
                ('description', models.CharField(blank=True, default='', max_length=500, null=True)),
                ('header_image', models.ImageField(blank=True, default='', max_length=500, null=True, upload_to='header_image/img/')),
            ],
            options={
                'abstract': False,
            },
            bases=('cms.cmsplugin',),
        ),
    ]
