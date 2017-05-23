from django import forms


class Ordering(forms.Form):
    fio = forms.CharField(max_length=100)
    phone = forms.CharField(max_length=50)
    mail = forms.EmailField(required=False)
