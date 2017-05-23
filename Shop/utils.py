from product.models import Cart
from django.template import Context


def base_args(request):
    args = {}
    try:
        ip = request.META['REMOTE_ADDR']
        cart_ords = list(Cart.objects.filter(user_ip=ip))
        args['count'] = len(cart_ords)

    except: pass
    return Context(args)
