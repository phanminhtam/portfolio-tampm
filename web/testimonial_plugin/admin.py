from django.contrib import admin

from .models import Testimonial, TestimonialPlugin


# Register your models here.
class TestimonialInline(admin.StackedInline):
    model = Testimonial


class TestimonialPluginAdmin(admin.ModelAdmin):
    inlines = [
        TestimonialInline
    ]


admin.site.register(TestimonialPlugin, TestimonialPluginAdmin)
admin.site.register(Testimonial)
