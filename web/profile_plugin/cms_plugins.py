from cms.plugin_base import CMSPluginBase
from cms.plugin_pool import plugin_pool
from cms.models.pluginmodel import CMSPlugin

from portfolio_models.models import Header, Profile, Skill, Service, Message


@plugin_pool.register_plugin
class BoxAreaComponentOne(CMSPluginBase):
    model = CMSPlugin
    render_template = 'profile_plugin/plugin/box-area-1.html'
    cache = False
    allow_children = True

    def render(self, context, instance, placeholder):
        context = super(BoxAreaComponentOne, self).render(context, instance, placeholder)

        skills = Skill.objects.get_all_order_by_percentage()

        context['skills'] = skills

        return context


@plugin_pool.register_plugin
class ProfileAreaComponentOne(CMSPluginBase):
    model = CMSPlugin
    render_template = 'profile_plugin/plugin/profile-area-1.html'
    cache = False
    allow_children = True

    def render(self, context, instance, placeholder):
        context = super(ProfileAreaComponentOne, self).render(context, instance, placeholder)

        return context

