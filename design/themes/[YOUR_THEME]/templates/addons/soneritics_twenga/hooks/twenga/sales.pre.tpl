<script data-no-defer type="text/javascript">
    var dataLayer = dataLayer || [];
    dataLayer.push({
        'ecommerce': {
            'purchase': {
                'actionField': {
                    'id': "{$order_info.order_id}"
                },
                'products': [
                    {foreach from=$order_info.products item=product name=productLoop}{
                        id: "{$product.product_code}",
                        price: "{$product.price}",
                        quantity: "{$product.amount}"
                    }{if !$smarty.foreach.productLoop.last},{/if}
                    {/foreach}
                ]
            }
        }
    });
</script>
