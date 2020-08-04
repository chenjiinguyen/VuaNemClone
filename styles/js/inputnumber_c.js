$(document).ready(function () {
    $('.c_ctrl').each(function (index) {

        var _this = this;


        this.els = {
            decrement: $(this).find('.c_ctrl__button--decrement'),
            counter: {
                container: $(this).find('.ctrl__counter'),
                num: $(this).find('.c_ctrl__counter-num'),
                input: $(this).find('.c_ctrl__counter-input')
            },
            increment: $(this).find('.c_ctrl__button--increment')
        };

        this.counter = this.els.counter.input.attr("value");


        this.decrement = function () {
            var counter = _this.getCounter();
            var nextCounter = (_this.counter > 0) ? --counter : counter;
            _this.setCounter(nextCounter);
        };

        this.increment = function () {
            var counter = _this.getCounter();
            var nextCounter = (counter < 10) ? ++counter : counter;
            _this.setCounter(nextCounter);
        };

        this.getCounter = function () {
            return _this.counter;
        };

        this.setCounter = function (nextCounter) {
            _this.counter = nextCounter;
        };

        this.debounce = function (callback) {
            setTimeout(callback, 100);
        };

        this.render = function (hideClassName, visibleClassName) {
            _this.els.counter.num.addClass(hideClassName);

            setTimeout(function () {
                _this.els.counter.num.text(_this.getCounter());
                _this.els.counter.input.val(_this.getCounter());
                _this.els.counter.num.addClass(visibleClassName);
            }, 100);

            setTimeout(function () {
                _this.els.counter.num.removeClass(hideClassName);
                _this.els.counter.num.removeClass(visibleClassName);
            }, 200);
        };

        
        
        _this.setCounter(_this.counter);
        _this.render();
        

        _this.els.decrement.on('click', function () {
            _this.debounce(function () {
                _this.decrement();
                _this.render('is-decrement-hide', 'is-decrement-visible');
            });
        });

        _this.els.increment.on('click', function () {
            _this.debounce(function () {
                _this.increment();
                _this.render('is-increment-hide', 'is-increment-visible');
            });
        });

        _this.els.counter.input.on('input', function (e) {
            var parseValue = parseInt(e.target.value);
            if (!isNaN(parseValue) && parseValue >= 0 && parseValue) {
                _this.setCounter(parseValue);
                _this.render();
            }
        });

        _this.els.counter.input.on('focus', function (e) {
            _this.els.counter.container.addClass('is-input');
        });

        _this.els.counter.input.on('blur', function (e) {
            _this.els.counter.container.removeClass('is-input');
            _this.render();
        });
       
    });
});