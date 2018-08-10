from django.contrib import admin

from .models import Header, Profile, Skill, Service


# Register your models here.
admin.site.register(Header)
admin.site.register(Profile)
admin.site.register(Skill)
admin.site.register(Service)
