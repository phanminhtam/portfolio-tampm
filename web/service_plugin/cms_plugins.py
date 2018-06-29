from cms.plugin_base import CMSPluginBase
from cms.plugin_pool import plugin_pool

from .models import ServiceContainer, ServiceContent


@plugin_pool.register_plugin
class ServiceContainerComponentPlugin(CMSPluginBase):
    model = ServiceContainer
    render_template = 'service_plugin/plugin/service-container-1.html'
    cache = False
    allow_children = True

    def render(self, context, instance, placeholder):
        context = super(ServiceContainerComponentPlugin, self).render(context, instance, placeholder)
        return context


@plugin_pool.register_plugin
class ServiceContainerTwoComponentPlugin(CMSPluginBase):
    model = ServiceContainer
    render_template = 'service_plugin/plugin/service-container-2.html'
    cache = False
    allow_children = True

    def render(self, context, instance, placeholder):
        context = super(ServiceContainerTwoComponentPlugin, self).render(context, instance, placeholder)
        return context


@plugin_pool.register_plugin
class ServiceContentOneComponentPlugin(CMSPluginBase):
    model = ServiceContent
    render_template = 'service_plugin/plugin/service-content-1.html'
    cache = False
    allow_children = False
    require_parent = True
    parent_classes = ['ServiceContainerComponentPlugin', 'ServiceContainerTwoComponentPlugin']

    def render(self, context, instance, placeholder):
        context = super(ServiceContentOneComponentPlugin, self).render(context, instance, placeholder)
        return context
