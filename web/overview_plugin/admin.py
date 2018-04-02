from django.contrib import admin

from .models import Overview, OverviewItem


# Register your models here.
class OverviewItemInline(admin.StackedInline):
    model = OverviewItem


class OverviewAdmin(admin.ModelAdmin):
    inlines = [
        OverviewItemInline
    ]


admin.site.register(Overview, OverviewAdmin)
admin.site.register(OverviewItem)
