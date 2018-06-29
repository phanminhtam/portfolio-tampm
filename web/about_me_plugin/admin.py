from django.contrib import admin

from .models import SkillContainer, SkillContent, AboutMe, Statistic


# Register your models here.
admin.site.register(SkillContainer)
admin.site.register(SkillContent)
admin.site.register(AboutMe)
admin.site.register(Statistic)
