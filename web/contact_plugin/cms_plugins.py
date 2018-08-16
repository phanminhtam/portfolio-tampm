from cms.plugin_base import CMSPluginBase
from cms.plugin_pool import plugin_pool
from cms.models.pluginmodel import CMSPlugin

from portfolio_models.models import Header, Profile, Skill, Service, Message


@plugin_pool.register_plugin
class ContactHeaderComponentOne(CMSPluginBase):
    model = CMSPlugin
    render_template = 'contact_plugin/plugin/contact-header-1.html'
    cache = False
    allow_children = False

    def render(self, context, instance, placeholder):
        context = super(ContactHeaderComponentOne, self).render(context, instance, placeholder)

        return context


@plugin_pool.register_plugin
class ContactAreaComponentOne(CMSPluginBase):
    model = CMSPlugin
    render_template = 'contact_plugin/plugin/contact-area-1.html'
    cache = False
    allow_children = False

    def render(self, context, instance, placeholder):
        context = super(ContactAreaComponentOne, self).render(context, instance, placeholder)

        request = context['request']
        if request.method == 'POST':
            message = Message(name=request.POST['name'], email_address=request.POST['email'],
                              message_text=request.POST['message'], phone=request.POST['phone'],
                              subject=request.POST['subject'])
            message.save()

        return context
