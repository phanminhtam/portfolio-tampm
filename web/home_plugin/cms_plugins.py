from cms.plugin_base import CMSPluginBase
from cms.plugin_pool import plugin_pool
from cms.models.pluginmodel import CMSPlugin

from .models import TextCenter, ShortHeader
from portfolio_models.models import Header, Profile, Skill, Service, Message


@plugin_pool.register_plugin
class HeaderAreaOneComponent(CMSPluginBase):
    model = Header
    render_template = 'home_plugin/plugin/header-area-1.html'
    cache = False
    allow_children = True

    def render(self, context, instance, placeholder):
        context = super(HeaderAreaOneComponent, self).render(context, instance, placeholder)

        return context


@plugin_pool.register_plugin
class HeaderAreaTwoComponent(CMSPluginBase):
    model = CMSPlugin
    render_template = 'home_plugin/plugin/header-area-2.html'
    cache = False
    allow_children = True

    def render(self, context, instance, placeholder):
        context = super(HeaderAreaTwoComponent, self).render(context, instance, placeholder)

        profile = Profile.objects.all().first()

        context['profile'] = profile

        return context


@plugin_pool.register_plugin
class PlayVideoComponentOne(CMSPluginBase):
    model = CMSPlugin
    render_template = 'home_plugin/plugin/video-play-1.html'
    cache = False
    allow_children = False

    def render(self, context, instance, placeholder):
        context = super(PlayVideoComponentOne, self).render(context, instance, placeholder)

        profile = Profile.objects.all().first()

        context['profile'] = profile

        return context


@plugin_pool.register_plugin
class TextCenterComponentOne(CMSPluginBase):
    model = TextCenter
    render_template = 'home_plugin/plugin/text-center-1.html'
    cache = False
    allow_children = False

    def render(self, context, instance, placeholder):
        context = super(TextCenterComponentOne, self).render(context, instance, placeholder)

        return context


@plugin_pool.register_plugin
class CustomerSupportComponentOne(CMSPluginBase):
    model = CMSPlugin
    render_template = 'home_plugin/plugin/customer-support-1.html'
    cache = False
    allow_children = False

    def render(self, context, instance, placeholder):
        context = super(CustomerSupportComponentOne, self).render(context, instance, placeholder)

        return context


@plugin_pool.register_plugin
class ServiceComponentOne(CMSPluginBase):
    model = CMSPlugin
    render_template = 'home_plugin/plugin/service-1.html'
    cache = False
    allow_children = True

    def render(self, context, instance, placeholder):
        context = super(ServiceComponentOne, self).render(context, instance, placeholder)

        services = Service.objects.get_all_order_by_updated_time()

        context['services'] = services

        return context


@plugin_pool.register_plugin
class PricingPlanComponentOne(CMSPluginBase):
    model = CMSPlugin
    render_template = 'home_plugin/plugin/pricing-plan-1.html'
    cache = False
    allow_children = True

    def render(self, context, instance, placeholder):
        context = super(PricingPlanComponentOne, self).render(context, instance, placeholder)

        return context


@plugin_pool.register_plugin
class SubscribeComponentOne(CMSPluginBase):
    model = CMSPlugin
    render_template = 'home_plugin/plugin/subscribe-1.html'
    cache = False
    allow_children = True

    def render(self, context, instance, placeholder):
        context = super(SubscribeComponentOne, self).render(context, instance, placeholder)

        return context


@plugin_pool.register_plugin
class SkillContainerComponentOne(CMSPluginBase):
    model = CMSPlugin
    render_template = 'home_plugin/plugin/skill-container-1.html'
    cache = False
    allow_children = False

    def render(self, context, instance, placeholder):
        context = super(SkillContainerComponentOne, self).render(context, instance, placeholder)

        skills = Skill.objects.get_all_order_by_percentage()

        context['skills'] = skills

        return context


@plugin_pool.register_plugin
class ContactMeOneComponent(CMSPluginBase):
    model = CMSPlugin
    render_template = 'home_plugin/plugin/contact-1.html'
    cache = False

    def render(self, context, instance, placeholder):
        context = super(ContactMeOneComponent, self).render(context, instance, placeholder)

        request = context['request']
        if request.method == 'POST':
            message = Message(name=request.POST['name'], email_address=request.POST['email'],
                              message_text=request.POST['message'], phone=request.POST['phone'],
                              subject=request.POST['subject'])
            message.save()

        return context


@plugin_pool.register_plugin
class ShortHeaderOneComponent(CMSPluginBase):
    model = ShortHeader
    render_template = 'home_plugin/plugin/short-header-1.html'
    cache = False
    allow_children = False

    def render(self, context, instance, placeholder):
        context = super(ShortHeaderOneComponent, self).render(context, instance, placeholder)

        return context
