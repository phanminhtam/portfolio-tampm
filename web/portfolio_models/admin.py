from django.contrib import admin

from .models import Header, Profile, Skill, Service, Contact, Message, Education, WorkingExperience


# Register your models here.
admin.site.register(Header)
admin.site.register(Profile)
admin.site.register(Skill)
admin.site.register(Service)
admin.site.register(Contact)
admin.site.register(Message)
admin.site.register(Education)
admin.site.register(WorkingExperience)
