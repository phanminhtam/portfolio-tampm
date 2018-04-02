from django.contrib import admin

from .models import ShortContact, Message

# Register your models here.
admin.site.register(ShortContact)
admin.site.register(Message)