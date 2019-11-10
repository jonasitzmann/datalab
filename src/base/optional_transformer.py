from sklearn.base import TransformerMixin


class OptionalTransformer(TransformerMixin):
    def __init__(self, active=True):
        super(OptionalTransformer, self).__init__()
        self.active = active
        self.transform = self.if_active(self.transform)

    def set_params(self, active=None, **kwargs):
        if active is not None:
            self.active = bool(active)

    def if_active(self, func):
        def wrapper(pass_param, *args, **kwargs):
            if self.active:
                return func(pass_param, *args, **kwargs)
            else:
                return pass_param
        return wrapper

