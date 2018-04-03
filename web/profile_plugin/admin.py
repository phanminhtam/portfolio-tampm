from django.contrib import admin

from .models import Profile, MilestoneItem


# Register your models here.
class MilestoneItemInline(admin.StackedInline):
    model = MilestoneItem


class ProfileAdmin(admin.ModelAdmin):
    inlines = [
        MilestoneItemInline
    ]


admin.site.register(Profile, ProfileAdmin)
admin.site.register(MilestoneItem)
