from __future__ import absolute_import, print_function, unicode_literals

from django.contrib import admin
from aldryn_apphooks_config.admin import BaseAppHookConfig, ModelAppHookConfig
from cms.admin.placeholderadmin import PlaceholderAdminMixin

from .models import Project, MediaAsset, Tag, LatestWorkSection


# Register your models here.
admin.site.register(Tag)
admin.site.register(MediaAsset)
admin.site.register(LatestWorkSection)


class MediaAssetInline(admin.TabularInline):
    model = MediaAsset


class ProjectAdmin(admin.ModelAdmin):
    list_display = (
        'title',
    )
    list_filter = (
        'title',
    )
    inlines = (
        # TypeOfProjectInline,
        MediaAssetInline,
    )


admin.site.register(Project, ProjectAdmin)


