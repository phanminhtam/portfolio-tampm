from cms.plugin_base import CMSPluginBase
from cms.plugin_pool import plugin_pool
from cms.models.pluginmodel import CMSPlugin

from portfolio_models.models import Header, Profile, Skill, Service, Message


@plugin_pool.register_plugin
class ServiceAreaComponentOne(CMSPluginBase):
    model = CMSPlugin
    render_template = 'service_plugin/plugin/service-area-1.html'
    cache = False
    allow_children = True

    def render(self, context, instance, placeholder):
        context = super(ServiceAreaComponentOne, self).render(context, instance, placeholder)

        services = Service.objects.get_all_order_by_updated_time()

        context['services'] = services

        return context
