from cms.plugin_base import CMSPluginBase
from cms.plugin_pool import plugin_pool
from cms.models.pluginmodel import CMSPlugin
from django.utils.translation import ugettext_lazy as _

from .models import SkillContainer, SkillContent, AboutMe, Statistic


@plugin_pool.register_plugin
class SkillContainerOneComponent(CMSPluginBase):
    model = SkillContainer
    render_template = 'about_me_plugin/plugins/skill-container-1-component.html'
    cache = False,
    allow_children = True

    def render(self, context, instance, placeholder):
        context = super(SkillContainerOneComponent, self).render(context, instance, placeholder)

        return context


@plugin_pool.register_plugin
class SkillContentOneComponent(CMSPluginBase):
    model = SkillContent
    render_template = 'about_me_plugin/plugins/skill-content-1-component.html'
    cache = False,
    allow_children = True
    require_parent = True
    parent_classes = ['SkillContainerOneComponent']

    def render(self, context, instance, placeholder):
        context = super(SkillContentOneComponent, self).render(context, instance, placeholder)

        return context


@plugin_pool.register_plugin
class AboutMeOneComponent(CMSPluginBase):
    model = AboutMe
    render_template = 'about_me_plugin/plugins/about-me-1-component.html'
    cache = False,
    allow_children = True

    def render(self, context, instance, placeholder):
        context = super(AboutMeOneComponent, self).render(context, instance, placeholder)

        return context


@plugin_pool.register_plugin
class StatisticOneComponent(CMSPluginBase):
    model = Statistic
    render_template = 'about_me_plugin/plugins/statistic-1-component.html'
    cache = False,
    allow_children = True
    require_parent = True
    parent_classes = ['AboutMeOneComponent']

    def render(self, context, instance, placeholder):
        context = super(StatisticOneComponent, self).render(context, instance, placeholder)

        return context
