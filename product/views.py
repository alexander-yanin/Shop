from django.shortcuts import render, render_to_response
from django.template import Context
from django.http import HttpResponseRedirect, HttpResponse
from django.core.urlresolvers import reverse
from django.core.paginator import Paginator
from django.db.models import F, Sum
import json

from .models import Product, ImageProduct, Cart, Application
from .forms import Ordering
from Shop.utils import base_args

# Create your views here.
def home(request, page=1, filt='all'):
    args = base_args(request)
    if request.method == 'GET' and filt != 'all':
        category = Product.objects.filter(category__name=filt)
        current_page = Paginator(category, 12)
        args['products'] = current_page.page(page)
    else:
        all_products = Product.objects.all()
        current_page = Paginator(all_products, 12)
        args['products'] = current_page.page(page)
    return render(request, 'product/home.html', args)


def prod_page(request, pk):
    args = base_args(request)
    if request.method == 'POST':
        if request.POST['operation'] == 'add':
            user_ip = request.META['REMOTE_ADDR'] 
            prod = Product.objects.get(pk=pk)
            if Cart.objects.filter(user_ip=user_ip, product=prod).exists():
                cart = Cart.objects.get(user_ip=user_ip, product=prod)
                cart.count += 1
                cart.save()
            else:
                Cart(product=prod, price=prod.price, user_ip=user_ip).save()
            return HttpResponseRedirect(reverse('product:prod_page', args=(pk,)))
    args['product'] = Product.objects.get(pk=pk)
    args['gallery'] = ImageProduct.objects.filter(product=args['product'])
    return render(request, 'product/prod_page.html', args)


def cart(request):
    args = base_args(request)
    form = Ordering(request.POST or None)
    ip = request.META['REMOTE_ADDR']
    orders = Cart.objects.filter(user_ip=ip)
    if form.is_valid():
        fio = form.cleaned_data['fio']
        phone = form.cleaned_data['phone']
        mail = form.cleaned_data['mail']
        for order in orders:
            count = order.count
            price = order.product.price
            Application(fio=fio, phone=phone, mail=mail,
                    product=order.product, count=count, sum_order=count*price).save()
        Cart.objects.filter(user_ip=ip).delete() 
        return HttpResponseRedirect(reverse('product:cart', args=()))
    if request.method == 'POST':
        try:
            if 'del' in request.POST:
                sels = request.POST.getlist('select')
                if sels:
                    for sel in sels:
                        Cart.objects.get(user_ip=ip, product__pk=sel).delete()
                    return HttpResponseRedirect(reverse('product:cart', args=()))
            if 'tov_count' in request.POST and 'tov_pk' in request.POST:
                count = request.POST['tov_count']
                pk = request.POST['tov_pk']
                order = Cart.objects.get(user_ip=ip, product__pk=pk)
                order.count = count
                order.save()
                ords = list(Cart.objects.filter(user_ip=ip))
                ord_sum = 0
                for o in ords:
                    ord_sum += o.price*o.count
                args['sum'] = ord_sum
                return HttpResponse(json.dumps({"sum": ord_sum}), content_type="application/json")
        except KeyError: print('ОШИБКА') 
    ords = list(Cart.objects.filter(user_ip=ip))
    ord_sum = 0
    for o in ords:
        ord_sum += o.price*o.count
    args['sum'] = ord_sum
    args['form'] = Ordering()
    args['orders'] = orders 
    return render(request, 'product/cart.html', args)
